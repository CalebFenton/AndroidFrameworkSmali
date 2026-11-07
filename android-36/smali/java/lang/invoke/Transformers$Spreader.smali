.class Ljava/lang/invoke/Transformers$Spreader;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spreader"
.end annotation


# instance fields
.field private final greylist-max-o arrayOffset:I

.field private final blacklist componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o numArrayArgs:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final blacklist trailingRange:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor blacklist <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;II)V
    .registers 8
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "spreaderType"    # Ljava/lang/invoke/MethodType;
    .param p3, "spreadArgPos"    # I
    .param p4, "numArrayArgs"    # I

    .line 1163
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1164
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    .line 1165
    iput p3, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    .line 1166
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Spreader;->componentType:Ljava/lang/Class;

    .line 1167
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Spreader;->componentType:Ljava/lang/Class;

    if-eqz v0, :cond_2f

    .line 1170
    iput p4, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    .line 1172
    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1173
    iget v0, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ldalvik/system/EmulatedStackFrame$Range;->from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Spreader;->trailingRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1174
    return-void

    .line 1168
    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be an array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private blacklist spreadArray(Ljava/lang/Class;Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .registers 9
    .param p2, "arrayObj"    # Ljava/lang/Object;
    .param p3, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            ")V"
        }
    .end annotation

    .line 1219
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1220
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    sparse-switch v1, :sswitch_data_a0

    goto/16 :goto_9f

    .line 1271
    :sswitch_d
    move-object v1, p2

    check-cast v1, [Z

    .line 1272
    .local v1, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_1c

    .line 1273
    aget-boolean v3, v1, v2

    invoke-virtual {p3, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 1272
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1275
    .end local v2    # "i":I
    :cond_1c
    goto/16 :goto_9f

    .line 1255
    .end local v1    # "array":[Z
    :sswitch_1e
    move-object v1, p2

    check-cast v1, [S

    .line 1256
    .local v1, "array":[S
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_22
    array-length v3, v1

    if-ge v2, v3, :cond_2d

    .line 1257
    aget-short v3, v1, v2

    invoke-virtual {p3, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 1256
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1259
    .end local v2    # "i":I
    :cond_2d
    goto/16 :goto_9f

    .line 1223
    .end local v1    # "array":[S
    :sswitch_2f
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    .line 1224
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_33
    array-length v3, v1

    if-ge v2, v3, :cond_3e

    .line 1225
    aget-object v3, v1, v2

    invoke-virtual {p3, v3, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1224
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1227
    .end local v2    # "i":I
    :cond_3e
    goto :goto_9f

    .line 1239
    .end local v1    # "array":[Ljava/lang/Object;
    :sswitch_3f
    move-object v1, p2

    check-cast v1, [J

    .line 1240
    .local v1, "array":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_43
    array-length v3, v1

    if-ge v2, v3, :cond_4e

    .line 1241
    aget-wide v3, v1, v2

    invoke-virtual {p3, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1243
    .end local v2    # "i":I
    :cond_4e
    goto :goto_9f

    .line 1231
    .end local v1    # "array":[J
    :sswitch_4f
    move-object v1, p2

    check-cast v1, [I

    .line 1232
    .local v1, "array":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_53
    array-length v3, v1

    if-ge v2, v3, :cond_5e

    .line 1233
    aget v3, v1, v2

    invoke-virtual {p3, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 1232
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1235
    .end local v2    # "i":I
    :cond_5e
    goto :goto_9f

    .line 1279
    .end local v1    # "array":[I
    :sswitch_5f
    move-object v1, p2

    check-cast v1, [F

    .line 1280
    .local v1, "array":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_63
    array-length v3, v1

    if-ge v2, v3, :cond_6e

    .line 1281
    aget v3, v1, v2

    invoke-virtual {p3, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1280
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 1283
    .end local v2    # "i":I
    :cond_6e
    goto :goto_9f

    .line 1287
    .end local v1    # "array":[F
    :sswitch_6f
    move-object v1, p2

    check-cast v1, [D

    .line 1288
    .local v1, "array":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_73
    array-length v3, v1

    if-ge v2, v3, :cond_7e

    .line 1289
    aget-wide v3, v1, v2

    invoke-virtual {p3, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 1291
    .end local v2    # "i":I
    :cond_7e
    goto :goto_9f

    .line 1263
    .end local v1    # "array":[D
    :sswitch_7f
    move-object v1, p2

    check-cast v1, [C

    .line 1264
    .local v1, "array":[C
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_83
    array-length v3, v1

    if-ge v2, v3, :cond_8e

    .line 1265
    aget-char v3, v1, v2

    invoke-virtual {p3, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 1264
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 1267
    .end local v2    # "i":I
    :cond_8e
    goto :goto_9f

    .line 1247
    .end local v1    # "array":[C
    :sswitch_8f
    move-object v1, p2

    check-cast v1, [B

    .line 1248
    .local v1, "array":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_93
    array-length v3, v1

    if-ge v2, v3, :cond_9e

    .line 1249
    aget-byte v3, v1, v2

    invoke-virtual {p3, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1248
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 1251
    .end local v2    # "i":I
    :cond_9e
    nop

    .line 1294
    .end local v1    # "array":[B
    :goto_9f
    return-void

    :sswitch_data_a0
    .sparse-switch
        0x42 -> :sswitch_8f
        0x43 -> :sswitch_7f
        0x44 -> :sswitch_6f
        0x46 -> :sswitch_5f
        0x49 -> :sswitch_4f
        0x4a -> :sswitch_3f
        0x4c -> :sswitch_2f
        0x53 -> :sswitch_1e
        0x5a -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 11
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1179
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Spreader;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 1180
    .local v0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-virtual {p1, v1, v0}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1184
    .local v1, "arrayObj":Ljava/lang/Object;
    iget v2, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    const/4 v3, 0x0

    if-nez v2, :cond_19

    if-nez v1, :cond_19

    move v2, v3

    goto :goto_1d

    :cond_19
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 1185
    .local v2, "arrayLength":I
    :goto_1d
    iget v4, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    if-ne v2, v4, :cond_7f

    .line 1191
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v4

    .line 1194
    .local v4, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v4, v5, v3, v3}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1195
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Spreader;->componentType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1196
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Spreader;->componentType:Ljava/lang/Class;

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v3

    .line 1197
    .local v3, "elementBytes":I
    mul-int v5, v3, v2

    .line 1198
    .local v5, "spreadBytes":I
    iget-object v6, p0, Ljava/lang/invoke/Transformers$Spreader;->trailingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v7, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v8, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v8, v8, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    add-int/2addr v8, v5

    invoke-virtual {p1, v4, v6, v7, v8}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1200
    .end local v3    # "elementBytes":I
    .end local v5    # "spreadBytes":I
    goto :goto_5f

    .line 1201
    :cond_4f
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Spreader;->trailingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    add-int/2addr v5, v6

    iget-object v6, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {p1, v4, v3, v5, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1205
    :goto_5f
    if-eqz v2, :cond_76

    .line 1206
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1207
    .local v3, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v7, p0, Ljava/lang/invoke/Transformers$Spreader;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v3, v4, v5, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1211
    invoke-direct {p0, v0, v1, v3}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray(Ljava/lang/Class;Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    .line 1214
    .end local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_76
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v3, v4}, Ljava/lang/invoke/Transformers$Spreader;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1215
    invoke-virtual {v4, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1216
    return-void

    .line 1186
    .end local v4    # "targetFrame":Ldalvik/system/EmulatedStackFrame;
    :cond_7f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid array length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
