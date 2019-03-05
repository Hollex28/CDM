.class public Lcom/htbridge/pivaa/AboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, Lcom/htbridge/pivaa/AboutActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/htbridge/pivaa/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 40
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/htbridge/pivaa/AboutActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 42
    invoke-virtual {p0}, Lcom/htbridge/pivaa/AboutActivity;->renderListView()V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htbridge/pivaa/AboutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 30
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 31
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method

.method public renderListView()V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;

    const-string/jumbo v4, "vulnerabilities.json"

    invoke-virtual {p0}, Lcom/htbridge/pivaa/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 52
    .local v0, "aboutJSONParser":Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;
    invoke-virtual {v0}, Lcom/htbridge/pivaa/handlers/about/AboutJSONParser;->parse()Ljava/util/ArrayList;

    move-result-object v2

    .line 54
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/about/AboutRecord;>;"
    new-instance v1, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;

    invoke-virtual {p0}, Lcom/htbridge/pivaa/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 56
    .local v1, "adapter":Lcom/htbridge/pivaa/handlers/about/AboutAdapter;
    const v4, 0x7f08008a

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 57
    .local v3, "listView":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 58
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p0, v3, v1}, Lcom/htbridge/pivaa/AboutActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;Lcom/htbridge/pivaa/handlers/about/AboutAdapter;)V

    .line 61
    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;Lcom/htbridge/pivaa/handlers/about/AboutAdapter;)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "adapter"    # Lcom/htbridge/pivaa/handlers/about/AboutAdapter;

    .prologue
    const/4 v7, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 72
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, p1}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "listItem":Landroid/view/View;
    invoke-virtual {v1, v7, v7}, Landroid/view/View;->measure(II)V

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit16 v4, v4, 0xb4

    add-int/2addr v3, v4

    .line 75
    const-string/jumbo v4, "htbridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listItem.getMeasuredHeight()  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "listItem":Landroid/view/View;
    :cond_0
    const-string/jumbo v4, "htbridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "totalHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 81
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 85
    return-void
.end method
