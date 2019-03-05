.class public Lcom/htbridge/pivaa/MainActivity$UserLoginTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htbridge/pivaa/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPassword:Ljava/lang/String;

.field private final mUsername:Ljava/lang/String;

.field final synthetic this$0:Lcom/htbridge/pivaa/MainActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "this$0"    # Lcom/htbridge/pivaa/MainActivity;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->mUsername:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    .line 282
    new-instance v0, Lcom/htbridge/pivaa/handlers/Authentication;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/Authentication;-><init>()V

    .line 284
    .local v0, "authCreds":Lcom/htbridge/pivaa/handlers/Authentication;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htbridge/pivaa/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/htbridge/pivaa/handlers/Authentication;->createLockFile(Landroid/content/Context;Ljava/lang/String;)Z

    .line 287
    invoke-virtual {p1}, Lcom/htbridge/pivaa/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/htbridge/pivaa/handlers/Authentication;->saveCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    invoke-virtual {p1}, Lcom/htbridge/pivaa/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/htbridge/pivaa/handlers/Authentication;->saveLoginInfoExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 298
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htbridge/pivaa/MainActivity;->access$302(Lcom/htbridge/pivaa/MainActivity;Lcom/htbridge/pivaa/MainActivity$UserLoginTask;)Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    .line 326
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htbridge/pivaa/MainActivity;->access$400(Lcom/htbridge/pivaa/MainActivity;Z)V

    .line 327
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htbridge/pivaa/MainActivity;->access$302(Lcom/htbridge/pivaa/MainActivity;Lcom/htbridge/pivaa/MainActivity$UserLoginTask;)Lcom/htbridge/pivaa/MainActivity$UserLoginTask;

    .line 310
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htbridge/pivaa/MainActivity;->access$400(Lcom/htbridge/pivaa/MainActivity;Z)V

    .line 312
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    const-class v3, Lcom/htbridge/pivaa/WebviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/htbridge/pivaa/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    invoke-static {v0}, Lcom/htbridge/pivaa/MainActivity;->access$500(Lcom/htbridge/pivaa/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Lcom/htbridge/pivaa/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->this$0:Lcom/htbridge/pivaa/MainActivity;

    invoke-static {v0}, Lcom/htbridge/pivaa/MainActivity;->access$500(Lcom/htbridge/pivaa/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/htbridge/pivaa/MainActivity$UserLoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
