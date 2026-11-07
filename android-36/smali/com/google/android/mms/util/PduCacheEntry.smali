.class public final Lcom/google/android/mms/util/PduCacheEntry;
.super Ljava/lang/Object;
.source "PduCacheEntry.java"


# instance fields
.field private final blacklist mMessageBox:I

.field private final blacklist mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private final blacklist mThreadId:J


# direct methods
.method public constructor greylist <init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    .registers 5
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "msgBox"    # I
    .param p3, "threadId"    # J

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 32
    iput p2, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    .line 33
    iput-wide p3, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    .line 34
    return-void
.end method


# virtual methods
.method public greylist getMessageBox()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public greylist getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public greylist getThreadId()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
