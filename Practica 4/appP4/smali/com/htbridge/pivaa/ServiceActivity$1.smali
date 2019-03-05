.class Lcom/htbridge/pivaa/ServiceActivity$1;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/ServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/ServiceActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/ServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/ServiceActivity;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htbridge/pivaa/ServiceActivity$1;->this$0:Lcom/htbridge/pivaa/ServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htbridge/pivaa/ServiceActivity$1;->this$0:Lcom/htbridge/pivaa/ServiceActivity;

    const-class v2, Lcom/htbridge/pivaa/handlers/VulnerableService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htbridge/pivaa/ServiceActivity$1;->this$0:Lcom/htbridge/pivaa/ServiceActivity;

    invoke-virtual {v1, v0}, Lcom/htbridge/pivaa/ServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method
