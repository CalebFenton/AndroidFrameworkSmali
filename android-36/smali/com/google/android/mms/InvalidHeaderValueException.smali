.class public Lcom/google/android/mms/InvalidHeaderValueException;
.super Lcom/google/android/mms/MmsException;
.source "InvalidHeaderValueException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x1c7f1651e1e18aa6L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/mms/MmsException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
