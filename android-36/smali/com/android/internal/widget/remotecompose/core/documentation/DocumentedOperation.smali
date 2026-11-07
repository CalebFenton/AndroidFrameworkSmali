.class public Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
.super Ljava/lang/Object;
.source "DocumentedOperation.java"


# static fields
.field public static final blacklist BOOLEAN:I = 0x2

.field public static final blacklist BUFFER:I = 0x4

.field public static final blacklist BYTE:I = 0x6

.field public static final blacklist FLOAT:I = 0x1

.field public static final blacklist FLOAT_ARRAY:I = 0xa

.field public static final blacklist INT:I = 0x0

.field public static final blacklist INT_ARRAY:I = 0xb

.field public static final blacklist LAYOUT:I = 0x0

.field public static final blacklist LONG:I = 0x8

.field public static final blacklist SHORT:I = 0x9

.field public static final blacklist UTF8:I = 0x5

.field public static final blacklist VALUE:I = 0x7


# instance fields
.field final blacklist mCategory:Ljava/lang/String;

.field blacklist mDescription:Ljava/lang/String;

.field blacklist mExamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mExamplesHeight:I

.field blacklist mExamplesWidth:I

.field blacklist mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mId:I

.field final blacklist mName:Ljava/lang/String;

.field blacklist mTextExamples:Ljava/lang/String;

.field blacklist mVarSize:Ljava/lang/String;

.field blacklist mWIP:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "wip"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    .line 50
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    .line 89
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mCategory:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mId:I

    .line 91
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mName:Ljava/lang/String;

    .line 92
    iput-boolean p4, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mWIP:Z

    .line 93
    return-void
.end method

.method public static blacklist getType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 60
    packed-switch p0, :pswitch_data_28

    .line 84
    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    .line 82
    :pswitch_6
    const-string v0, "INT[]"

    return-object v0

    .line 80
    :pswitch_9
    const-string v0, "FLOAT[]"

    return-object v0

    .line 78
    :pswitch_c
    const-string v0, "SHORT"

    return-object v0

    .line 76
    :pswitch_f
    const-string v0, "LONG"

    return-object v0

    .line 74
    :pswitch_12
    const-string v0, "VALUE"

    return-object v0

    .line 72
    :pswitch_15
    const-string v0, "BYTE"

    return-object v0

    .line 70
    :pswitch_18
    const-string v0, "UTF8"

    return-object v0

    .line 68
    :pswitch_1b
    const-string v0, "BUFFER"

    return-object v0

    .line 66
    :pswitch_1e
    const-string v0, "BOOLEAN"

    return-object v0

    .line 64
    :pswitch_21
    const-string v0, "FLOAT"

    return-object v0

    .line 62
    :pswitch_24
    const-string v0, "INT"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_3
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 219
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public blacklist exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    return-object p0
.end method

.method public blacklist examples(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 2
    .param p1, "examples"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mTextExamples:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public blacklist examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 257
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    .line 258
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    .line 259
    return-object p0
.end method

.method public blacklist field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 6
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public blacklist field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 7
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "varSize"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-object p0
.end method

.method public blacklist getCategory()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExamples()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExamplesHeight()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    return v0
.end method

.method public blacklist getExamplesWidth()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    return v0
.end method

.method public blacklist getFields()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mId:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSizeFields()I
    .registers 6

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "size":I
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    .line 135
    .local v2, "field":Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getSize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 136
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getSize()I

    move-result v3

    if-gez v3, :cond_4c

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getVarSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    .line 139
    .end local v2    # "field":Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;
    :cond_4c
    goto :goto_b

    .line 140
    :cond_4d
    return v0
.end method

.method public blacklist getTextExamples()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mTextExamples:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVarSize()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isWIP()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mWIP:Z

    return v0
.end method

.method public blacklist possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->possibleValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2e
    return-object p0
.end method
