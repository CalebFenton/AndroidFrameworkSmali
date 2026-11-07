.class public final Landroid/util/MutableLong;
.super Ljava/lang/Object;
.source "MutableLong.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:J


# direct methods
.method public constructor whitelist <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Landroid/util/MutableLong;->value:J

    .line 29
    return-void
.end method
