.class public Landroid/system/Int64Ref;
.super Ljava/lang/Object;
.source "Int64Ref.java"


# instance fields
.field public whitelist test-api value:J


# direct methods
.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Landroid/system/Int64Ref;->value:J

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 32
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
