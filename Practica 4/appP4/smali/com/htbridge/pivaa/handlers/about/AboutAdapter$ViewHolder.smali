.class Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AboutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htbridge/pivaa/handlers/about/AboutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field description_about_item:Landroid/widget/TextView;

.field name_about_item:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htbridge/pivaa/handlers/about/AboutAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htbridge/pivaa/handlers/about/AboutAdapter$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htbridge/pivaa/handlers/about/AboutAdapter$ViewHolder;-><init>()V

    return-void
.end method
