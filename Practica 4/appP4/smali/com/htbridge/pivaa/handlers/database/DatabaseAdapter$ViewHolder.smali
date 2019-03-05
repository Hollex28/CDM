.class Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field author_database_item:Landroid/widget/TextView;

.field button_delete_database_item:Landroid/widget/Button;

.field title_database_item:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$ViewHolder;-><init>()V

    return-void
.end method
