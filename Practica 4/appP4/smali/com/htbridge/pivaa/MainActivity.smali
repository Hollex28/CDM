.class public Lcom/htbridge/pivaa/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htbridge/pivaa/MainActivity$UserLoginTask;
    }
.end annotation


# static fields
.field private static final REQUEST_READ_CONTACTS:I


# instance fields
.field private mAuthTask:Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

.field private mLoginFormView:Landroid/view/View;

.field private mPasswordView:Landroid/widget/EditText;

.field private mProgressView:Landroid/view/View;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htbridge/pivaa/MainActivity;->mAuthTask:Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    return-void
.end method

.method static synthetic access$000(Lcom/htbridge/pivaa/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/htbridge/pivaa/MainActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htbridge/pivaa/MainActivity;->attemptLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/htbridge/pivaa/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity;->mLoginFormView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htbridge/pivaa/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htbridge/pivaa/MainActivity;Lcom/htbridge/pivaa/MainActivity$UserLoginTask;)Lcom/htbridge/pivaa/MainActivity$UserLoginTask;
    .locals 0
    .param p0, "x0"    # Lcom/htbridge/pivaa/MainActivity;
    .param p1, "x1"    # Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htbridge/pivaa/MainActivity;->mAuthTask:Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htbridge/pivaa/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/htbridge/pivaa/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htbridge/pivaa/MainActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htbridge/pivaa/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/htbridge/pivaa/MainActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method private attemptLogin()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 159
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mAuthTask:Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    if-eqz v5, :cond_0

    .line 203
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "username":Ljava/lang/String;
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "password":Ljava/lang/String;
    const/4 v0, 0x0

    .line 172
    .local v0, "cancel":Z
    const/4 v1, 0x0

    .line 175
    .local v1, "focusView":Landroid/view/View;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v2}, Lcom/htbridge/pivaa/MainActivity;->isPasswordValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    const v6, 0x7f0d0028

    invoke-virtual {p0, v6}, Lcom/htbridge/pivaa/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    .line 178
    const/4 v0, 0x1

    .line 182
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    const v6, 0x7f0d0026

    invoke-virtual {p0, v6}, Lcom/htbridge/pivaa/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    .line 185
    const/4 v0, 0x1

    .line 192
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 186
    :cond_3
    invoke-direct {p0, v3}, Lcom/htbridge/pivaa/MainActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 187
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    const v6, 0x7f0d0029

    invoke-virtual {p0, v6}, Lcom/htbridge/pivaa/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    .line 189
    const/4 v0, 0x1

    goto :goto_1

    .line 199
    :cond_4
    invoke-direct {p0, v7}, Lcom/htbridge/pivaa/MainActivity;->showProgress(Z)V

    .line 200
    new-instance v5, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    invoke-direct {v5, p0, v3, v2}, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;-><init>(Lcom/htbridge/pivaa/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mAuthTask:Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    .line 201
    iget-object v5, p0, Lcom/htbridge/pivaa/MainActivity;->mAuthTask:Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    new-array v6, v7, [Ljava/lang/Void;

    const/4 v7, 0x0

    check-cast v4, Ljava/lang/Void;

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private isPasswordValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsernameValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showProgress(Z)V
    .locals 8
    .param p1, "show"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v1, v6, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/htbridge/pivaa/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x10e0000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 229
    .local v0, "shortAnimTime":I
    iget-object v6, p0, Lcom/htbridge/pivaa/MainActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mLoginFormView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v6, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v6, Lcom/htbridge/pivaa/MainActivity$3;

    invoke-direct {v6, p0, p1}, Lcom/htbridge/pivaa/MainActivity$3;-><init>(Lcom/htbridge/pivaa/MainActivity;Z)V

    .line 231
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 238
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/htbridge/pivaa/MainActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/htbridge/pivaa/MainActivity$4;-><init>(Lcom/htbridge/pivaa/MainActivity;Z)V

    .line 240
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 252
    .end local v0    # "shortAnimTime":I
    :goto_4
    return-void

    .restart local v0    # "shortAnimTime":I
    :cond_0
    move v1, v3

    .line 229
    goto :goto_0

    :cond_1
    move v1, v5

    .line 230
    goto :goto_1

    :cond_2
    move v3, v2

    .line 238
    goto :goto_2

    :cond_3
    move v5, v4

    .line 239
    goto :goto_3

    .line 249
    .end local v0    # "shortAnimTime":I
    :cond_4
    iget-object v4, p0, Lcom/htbridge/pivaa/MainActivity;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move v1, v2

    .line 249
    goto :goto_5

    :cond_6
    move v2, v3

    .line 250
    goto :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v9, 0x7f0a0022

    invoke-virtual {p0, v9}, Lcom/htbridge/pivaa/MainActivity;->setContentView(I)V

    .line 76
    const v9, 0x7f0800f7

    invoke-virtual {p0, v9}, Lcom/htbridge/pivaa/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    .line 77
    const v9, 0x7f0800a4

    invoke-virtual {p0, v9}, Lcom/htbridge/pivaa/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    .line 78
    iget-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    new-instance v10, Lcom/htbridge/pivaa/MainActivity$1;

    invoke-direct {v10, p0}, Lcom/htbridge/pivaa/MainActivity$1;-><init>(Lcom/htbridge/pivaa/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 89
    const v9, 0x7f0800c9

    invoke-virtual {p0, v9}, Lcom/htbridge/pivaa/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 90
    .local v5, "mSignInButton":Landroid/widget/Button;
    new-instance v9, Lcom/htbridge/pivaa/MainActivity$2;

    invoke-direct {v9, p0}, Lcom/htbridge/pivaa/MainActivity$2;-><init>(Lcom/htbridge/pivaa/MainActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v9, 0x7f08008c

    invoke-virtual {p0, v9}, Lcom/htbridge/pivaa/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mLoginFormView:Landroid/view/View;

    .line 98
    const v9, 0x7f08008d

    invoke-virtual {p0, v9}, Lcom/htbridge/pivaa/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mProgressView:Landroid/view/View;

    .line 102
    new-instance v1, Lcom/htbridge/pivaa/handlers/Authentication;

    invoke-direct {v1}, Lcom/htbridge/pivaa/handlers/Authentication;-><init>()V

    .line 103
    .local v1, "authCreds":Lcom/htbridge/pivaa/handlers/Authentication;
    invoke-virtual {p0}, Lcom/htbridge/pivaa/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htbridge/pivaa/handlers/Authentication;->loadLoginInfoExternalStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "result":Ljava/lang/String;
    new-instance v9, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 107
    .local v7, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 109
    new-instance v2, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v2}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    .line 111
    .local v2, "config":Lcom/htbridge/pivaa/Configuration;
    new-instance v0, Lcom/htbridge/pivaa/handlers/API;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/API;-><init>()V

    .line 112
    .local v0, "apiComm":Lcom/htbridge/pivaa/handlers/API;
    iget-object v9, v2, Lcom/htbridge/pivaa/Configuration;->url_json:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/htbridge/pivaa/handlers/API;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "jsonData":Ljava/lang/String;
    const-string/jumbo v9, "htbridge"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 128
    :goto_0
    const-string/jumbo v9, "htbridge"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Returned -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v3, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    invoke-direct {v3, p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, "db":Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;
    invoke-virtual {v3}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->initDatabaseOuter()V

    .line 134
    new-instance v9, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    iget-object v10, v2, Lcom/htbridge/pivaa/Configuration;->default_title_database_item:Ljava/lang/String;

    iget-object v11, v2, Lcom/htbridge/pivaa/Configuration;->default_author_database_item:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->addRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V

    .line 135
    return-void

    .line 123
    .end local v3    # "db":Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;
    :cond_0
    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "parts":[Ljava/lang/String;
    iget-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mUsernameView:Landroid/widget/EditText;

    const/4 v10, 0x0

    aget-object v10, v6, v10

    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v9, v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 125
    iget-object v9, p0, Lcom/htbridge/pivaa/MainActivity;->mPasswordView:Landroid/widget/EditText;

    const/4 v10, 0x1

    aget-object v10, v6, v10

    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v9, v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htbridge/pivaa/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 66
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 150
    :cond_0
    return-void
.end method
