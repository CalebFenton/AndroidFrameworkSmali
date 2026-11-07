.class public Landroid/system/Int32Ref;
.super Ljava/lang/Object;
.source "Int32Ref.java"


# instance fields
.field public greylist value:I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/system/Int32Ref;->value:I

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 36
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
