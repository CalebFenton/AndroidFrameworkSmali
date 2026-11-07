.class public abstract Landroid/media/internal/guava_common/collect/ForwardingObject;
.super Ljava/lang/Object;
.source "ForwardingObject.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist delegate()Ljava/lang/Object;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 64
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ForwardingObject;->delegate()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
