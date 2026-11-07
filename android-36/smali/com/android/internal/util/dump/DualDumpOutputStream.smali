.class public Lcom/android/internal/util/dump/DualDumpOutputStream;
.super Ljava/lang/Object;
.source "DualDumpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;,
        Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;,
        Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDumpObjects:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIpw:Landroid/util/IndentingPrintWriter;

.field private final blacklist mProtoStream:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    .line 150
    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    .line 153
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    invoke-direct {v2, v0, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    .line 139
    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist end(J)V
    .registers 6
    .param p1, "token"    # J

    .line 224
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_56

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_51

    .line 228
    sget-object v0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token for ending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    iget-object v2, v2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_51
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 233
    :goto_56
    return-void
.end method

.method public blacklist flush()V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 237
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto :goto_36

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 240
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->print(Landroid/util/IndentingPrintWriter;Z)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 244
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_31
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 249
    :goto_36
    return-void
.end method

.method public blacklist isProto()Z
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist start(Ljava/lang/String;J)J
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J

    .line 213
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_b

    .line 214
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    return-wide v0

    .line 216
    :cond_b
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    .line 217
    .local v0, "d":Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 219
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public blacklist write(Ljava/lang/String;JD)V
    .registers 10
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # D

    .line 157
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 158
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    goto :goto_1f

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 162
    :goto_1f
    return-void
.end method

.method public blacklist write(Ljava/lang/String;JF)V
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # F

    .line 181
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    goto :goto_1f

    .line 184
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 186
    :goto_1f
    return-void
.end method

.method public blacklist write(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # I

    .line 173
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 174
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1f

    .line 176
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 178
    :goto_1f
    return-void
.end method

.method public blacklist write(Ljava/lang/String;JJ)V
    .registers 10
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # J

    .line 197
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1f

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 202
    :goto_1f
    return-void
.end method

.method public blacklist write(Ljava/lang/String;JLjava/lang/String;)V
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1f

    .line 208
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 210
    :goto_1f
    return-void
.end method

.method public blacklist write(Ljava/lang/String;JZ)V
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # Z

    .line 165
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 166
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_1f

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 170
    :goto_1f
    return-void
.end method

.method public blacklist write(Ljava/lang/String;J[B)V
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # [B

    .line 189
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_a

    .line 190
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    goto :goto_1f

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 194
    :goto_1f
    return-void
.end method

.method public blacklist writeNested(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "nestedState"    # [B

    .line 260
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Landroid/util/IndentingPrintWriter;

    if-nez v0, :cond_d

    .line 261
    sget-object v0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeNested does not work for proto logging"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_d
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    .line 265
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 267
    return-void
.end method
