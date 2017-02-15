import MainView    from './main';
import ZipIndexView from './page/zips_index_view';

// Collection of specific view modules
const views = {
  ZipIndexView
};

export default function loadView(viewName) {
  return views[viewName] || MainView;
}
