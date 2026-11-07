.class public final Landroid/util/MutableDouble;
.super Ljava/lang/Object;
.source "MutableDouble.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:D


# direct methods
.method public constructor whitelist <init>(D)V
    .registers 3
    .param p1, "value"    # D

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Landroid/util/MutableDouble;->value:D

    .line 29
    return-void
.end method
