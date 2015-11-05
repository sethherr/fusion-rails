import {decodeHTML} from 'utils';

export var Key = React.createClass({
  handleClick: function() {
    this.props.onSelectKey(this.props.keyIndex);
  },

  contextMenu: function() {
    console.log("context-menu");
  },

  render: function() {
    var styles = {
      top: (this.props.data.voffset*54||0)+this.props.data.y*54,
      left: (this.props.data.hoffset*54||0)+this.props.data.x*54,
      width: (this.props.data.width||1)*54,
      height: (this.props.data.height||1)*54,
      transform: 'rotate('+(this.props.data.rotate||0)+'deg)',
      transformOrigin: this.props.data.origin||'top left',
      backgroundColor: this.props.data.backgroundColor
    };
    var keyTopStyles = {
      height: styles.height - 13,
      width: styles.width - 8
    };
    var classNames = ['key'];
    if(this.props.keyIndex == this.props.selectedKey) {
      classNames.push('selected')
    }

    return (
      <div className={classNames.join(' ')} style={styles} onClick={this.handleClick} onContextMenu={this.contextMenu}>
        <div className="keytop" style={keyTopStyles}>
          <div className="l l-tl">{decodeHTML(this.props.data.label||'')}</div>
        </div>
      </div>
    );
  }
});