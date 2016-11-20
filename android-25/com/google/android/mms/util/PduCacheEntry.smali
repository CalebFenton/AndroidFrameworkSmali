.class public final Lcom/google/android/mms/util/PduCacheEntry;
.super Ljava/lang/Object;
.source "PduCacheEntry.java"


# instance fields
.field private final mMessageBox:I

.field private final mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    .locals 1
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "msgBox"    # I
    .param p3, "threadId"    # J

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@5
    .line 29
    iput p2, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    #@7
    .line 30
    iput-wide p3, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    #@9
    .line 27
    return-void
.end method


# virtual methods
.method public getMessageBox()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    #@2
    return v0
.end method

.method public getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@2
    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    #@0
    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    #@2
    return-wide v0
.end method
