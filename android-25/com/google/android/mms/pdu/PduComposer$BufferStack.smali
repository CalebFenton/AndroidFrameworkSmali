.class Lcom/google/android/mms/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;

.field private toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/mms/pdu/PduComposer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1061
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1062
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@8
    .line 1063
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@a
    .line 1065
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@d
    .line 1061
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$BufferStack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/mms/pdu/PduComposer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    #@3
    return-void
.end method


# virtual methods
.method copy()V
    .locals 4

    #@0
    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@2
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@4
    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@9
    move-result-object v1

    #@a
    .line 1117
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@c
    iget v2, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    #@e
    .line 1116
    const/4 v3, 0x0

    #@f
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    #@12
    .line 1119
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@15
    .line 1115
    return-void
.end method

.method mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .locals 3

    #@0
    .prologue
    .line 1126
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@2
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$PositionMarker;)V

    #@8
    .line 1128
    .local v0, "m":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@a
    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@c
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->-set0(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I

    #@f
    .line 1129
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@11
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->-set1(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I

    #@14
    .line 1131
    return-object v0
.end method

.method newbuf()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1074
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1075
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v2, "BUG: Invalid newbuf() before copy()"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 1078
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@10
    invoke-direct {v0, v2}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>(Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;)V

    #@13
    .line 1080
    .local v0, "temp":Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@15
    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@17
    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    #@19
    .line 1081
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@1b
    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@1d
    iput v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    #@1f
    .line 1083
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@21
    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@23
    .line 1084
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@25
    .line 1086
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@2b
    .line 1088
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@2d
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@2f
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@32
    iput-object v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@34
    .line 1089
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@36
    const/4 v2, 0x0

    #@37
    iput v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@39
    .line 1070
    return-void
.end method

.method pop()V
    .locals 4

    #@0
    .prologue
    .line 1096
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@2
    iget-object v0, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@4
    .line 1097
    .local v0, "currentMessage":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@6
    iget v1, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@8
    .line 1099
    .local v1, "currentPosition":I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@a
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@c
    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    #@e
    iput-object v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@10
    .line 1100
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #@12
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@14
    iget v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    #@16
    iput v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@18
    .line 1102
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@1a
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@1c
    .line 1105
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@1e
    iget-object v2, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@20
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@22
    .line 1106
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@24
    add-int/lit8 v2, v2, -0x1

    #@26
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #@28
    .line 1108
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@2a
    iput-object v0, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    #@2c
    .line 1109
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    #@2e
    iput v1, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    #@30
    .line 1095
    return-void
.end method
