.class Lcom/htbridge/pivaa/MainActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/MainActivity;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/MainActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/MainActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/MainActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/htbridge/pivaa/MainActivity$3;->this$0:Lcom/htbridge/pivaa/MainActivity;

    iput-boolean p2, p0, Lcom/htbridge/pivaa/MainActivity$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$3;->this$0:Lcom/htbridge/pivaa/MainActivity;

    invoke-static {v0}, Lcom/htbridge/pivaa/MainActivity;->access$100(Lcom/htbridge/pivaa/MainActivity;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/htbridge/pivaa/MainActivity$3;->val$show:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
