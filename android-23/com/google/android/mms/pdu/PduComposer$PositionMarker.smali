.class Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMarker"
.end annotation


# instance fields
.field private c_pos:I

.field private currentStackSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;


# direct methods
.method static synthetic -set0(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I

    #@2
    return p1
.end method

.method private constructor <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/mms/pdu/PduComposer;

    #@0
    .prologue
    .line 1040
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$PositionMarker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/mms/pdu/PduComposer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    #@3
    return-void
.end method


# virtual methods
.method getLength()I
    .locals 2

    #@0
    .prologue
    .line 1048
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I

    #@2
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@4
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduComposer;->-get0(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 1049
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v1, "BUG: Invalid call to getLength()"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@17
    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@19
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I

    #@1b
    sub-int/2addr v0, v1

    #@1c
    return v0
.end method
