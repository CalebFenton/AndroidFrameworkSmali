.class public Landroid/widget/Filter$FilterResults;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilterResults"
.end annotation


# instance fields
.field public whitelist count:I

.field public whitelist values:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method
