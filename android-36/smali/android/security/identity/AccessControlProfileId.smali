.class public Landroid/security/identity/AccessControlProfileId;
.super Ljava/lang/Object;
.source "AccessControlProfileId.java"


# instance fields
.field private blacklist mId:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    .line 33
    iput p1, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist getId()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    return v0
.end method
