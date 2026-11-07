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
.field blacklist currentMessage:Ljava/io/ByteArrayOutputStream;

.field public blacklist currentPosition:I

.field public blacklist next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1071
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1073
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/google/android/mms/pdu/PduComposer-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>()V

    return-void
.end method
