.class Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthRecordNode"
.end annotation


# instance fields
.field currentMessage:Ljava/io/ByteArrayOutputStream;

.field public currentPosition:I

.field public next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1031
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    #@6
    .line 1032
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    #@9
    .line 1034
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@b
    .line 1030
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>()V

    #@3
    return-void
.end method
