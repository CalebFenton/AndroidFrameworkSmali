.class Landroid/widget/Filter$RequestArguments;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestArguments"
.end annotation


# instance fields
.field greylist-max-o constraint:Ljava/lang/CharSequence;

.field greylist-max-o listener:Landroid/widget/Filter$FilterListener;

.field greylist-max-o results:Landroid/widget/Filter$FilterResults;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Filter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter$RequestArguments;-><init>()V

    return-void
.end method
