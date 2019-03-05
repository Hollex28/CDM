.class public Lcom/htbridge/pivaa/EncryptionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EncryptionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v5, 0x7f0a0020

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->setContentView(I)V

    .line 37
    const v5, 0x7f0800e9

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    .line 38
    .local v4, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/EncryptionActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 43
    const v5, 0x7f080037

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 44
    .local v1, "mHashingButton":Landroid/widget/Button;
    new-instance v5, Lcom/htbridge/pivaa/EncryptionActivity$1;

    invoke-direct {v5, p0}, Lcom/htbridge/pivaa/EncryptionActivity$1;-><init>(Lcom/htbridge/pivaa/EncryptionActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x7f08003c

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 63
    .local v2, "mRNGButton":Landroid/widget/Button;
    new-instance v5, Lcom/htbridge/pivaa/EncryptionActivity$2;

    invoke-direct {v5, p0}, Lcom/htbridge/pivaa/EncryptionActivity$2;-><init>(Lcom/htbridge/pivaa/EncryptionActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v5, 0x7f080036

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, "mEncryptionButton":Landroid/widget/Button;
    new-instance v5, Lcom/htbridge/pivaa/EncryptionActivity$3;

    invoke-direct {v5, p0}, Lcom/htbridge/pivaa/EncryptionActivity$3;-><init>(Lcom/htbridge/pivaa/EncryptionActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 102
    .local v3, "mWeakIVButton":Landroid/widget/Button;
    new-instance v5, Lcom/htbridge/pivaa/EncryptionActivity$4;

    invoke-direct {v5, p0}, Lcom/htbridge/pivaa/EncryptionActivity$4;-><init>(Lcom/htbridge/pivaa/EncryptionActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htbridge/pivaa/EncryptionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 27
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 28
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method
