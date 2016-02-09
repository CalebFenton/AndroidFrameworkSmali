.class public Lcom/google/android/mms/InvalidHeaderValueException;
.super Lcom/google/android/mms/MmsException;
.source "InvalidHeaderValueException.java"


# static fields
.field private static final serialVersionUID:J = -0x1c7f1651e1e18aa6L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/mms/MmsException;-><init>()V

    #@3
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    return-void
.end method
