.class public abstract Landroid/net/eap/EapInfo;
.super Ljava/lang/Object;
.source "EapInfo.java"


# instance fields
.field private final blacklist mEapMethodType:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "eapMethodType"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/net/eap/EapInfo;->mEapMethodType:I

    .line 31
    return-void
.end method


# virtual methods
.method public final whitelist getEapMethodType()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/net/eap/EapInfo;->mEapMethodType:I

    return v0
.end method
