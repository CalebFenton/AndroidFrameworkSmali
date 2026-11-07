.class public final Landroid/util/MutableShort;
.super Ljava/lang/Object;
.source "MutableShort.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:S


# direct methods
.method public constructor whitelist <init>(S)V
    .registers 2
    .param p1, "value"    # S

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-short p1, p0, Landroid/util/MutableShort;->value:S

    .line 29
    return-void
.end method
