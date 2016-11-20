.class public Landroid/gesture/GestureStore;
.super Ljava/lang/Object;
.source "GestureStore.java"


# static fields
.field private static final FILE_FORMAT_VERSION:S = 0x1s

.field public static final ORIENTATION_INVARIANT:I = 0x1

.field public static final ORIENTATION_SENSITIVE:I = 0x2

.field static final ORIENTATION_SENSITIVE_4:I = 0x4

.field static final ORIENTATION_SENSITIVE_8:I = 0x8

.field private static final PROFILE_LOADING_SAVING:Z = false

.field public static final SEQUENCE_INVARIANT:I = 0x1

.field public static final SEQUENCE_SENSITIVE:I = 0x2


# instance fields
.field private mChanged:Z

.field private mClassifier:Landroid/gesture/Learner;

.field private final mNamedGestures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrientationStyle:I

.field private mSequenceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    iput v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@6
    .line 80
    iput v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@8
    .line 83
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 82
    iput-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@f
    .line 87
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    #@12
    .line 90
    new-instance v0, Landroid/gesture/InstanceLearner;

    #@14
    invoke-direct {v0}, Landroid/gesture/InstanceLearner;-><init>()V

    #@17
    iput-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@19
    .line 89
    return-void
.end method

.method private readFormatV1(Ljava/io/DataInputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@2
    .line 308
    .local v0, "classifier":Landroid/gesture/Learner;
    iget-object v8, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@4
    .line 309
    .local v8, "namedGestures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    #@7
    .line 312
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@a
    move-result v1

    #@b
    .line 314
    .local v1, "entriesCount":I
    const/4 v5, 0x0

    #@c
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    #@e
    .line 316
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@11
    move-result-object v7

    #@12
    .line 318
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@15
    move-result v3

    #@16
    .line 320
    .local v3, "gestureCount":I
    new-instance v4, Ljava/util/ArrayList;

    #@18
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1b
    .line 321
    .local v4, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v6, 0x0

    #@1c
    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_0

    #@1e
    .line 322
    invoke-static {p1}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;

    #@21
    move-result-object v2

    #@22
    .line 323
    .local v2, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 325
    iget v9, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@27
    iget v10, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@29
    invoke-static {v9, v10, v2, v7}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    #@2c
    move-result-object v9

    #@2d
    .line 324
    invoke-virtual {v0, v9}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    #@30
    .line 321
    add-int/lit8 v6, v6, 0x1

    #@32
    goto :goto_1

    #@33
    .line 328
    .end local v2    # "gesture":Landroid/gesture/Gesture;
    :cond_0
    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 314
    add-int/lit8 v5, v5, 0x1

    #@38
    goto :goto_0

    #@39
    .line 306
    .end local v3    # "gestureCount":I
    .end local v4    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v6    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 4
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    .line 149
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 150
    :cond_0
    return-void

    #@9
    .line 152
    :cond_1
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/ArrayList;

    #@11
    .line 153
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_2

    #@13
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@15
    .end local v0    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 155
    .restart local v0    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 157
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 158
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@22
    .line 159
    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@24
    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@26
    invoke-static {v2, v3, p2, p1}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    #@29
    move-result-object v2

    #@2a
    .line 158
    invoke-virtual {v1, v2}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    #@2d
    .line 160
    const/4 v1, 0x1

    #@2e
    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    #@30
    .line 148
    return-void
.end method

.method public getGestureEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 206
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/ArrayList;

    #@9
    .line 207
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-eqz v0, :cond_0

    #@b
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    return-object v1

    #@11
    .line 210
    :cond_0
    return-object v2
.end method

.method getLearner()Landroid/gesture/Learner;
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@2
    return-object v0
.end method

.method public getOrientationStyle()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@2
    return v0
.end method

.method public getSequenceType()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@2
    return v0
.end method

.method public hasChanged()Z
    .locals 1

    #@0
    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    #@2
    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V

    #@4
    .line 274
    return-void
.end method

.method public load(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    .line 281
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    #@3
    instance-of v3, p1, Ljava/io/BufferedInputStream;

    #@5
    if-eqz v3, :cond_1

    #@7
    .end local p1    # "stream":Ljava/io/InputStream;
    :goto_0
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 290
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .end local v0    # "in":Ljava/io/DataInputStream;
    move-result v2

    #@e
    .line 291
    .local v2, "versionNumber":S
    packed-switch v2, :pswitch_data_0

    #@11
    .line 302
    :goto_1
    if-eqz p2, :cond_0

    #@13
    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@16
    .line 278
    :cond_0
    return-void

    #@17
    .line 282
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "versionNumber":S
    .restart local v0    # "in":Ljava/io/DataInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    #@19
    const v4, 0x8000

    #@1c
    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    move-object p1, v3

    #@20
    goto :goto_0

    #@21
    .line 293
    .end local v0    # "in":Ljava/io/DataInputStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "versionNumber":S
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v1}, Landroid/gesture/GestureStore;->readFormatV1(Ljava/io/DataInputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    goto :goto_1

    #@25
    .line 301
    .end local v2    # "versionNumber":S
    :catchall_0
    move-exception v3

    #@26
    move-object v0, v1

    #@27
    .line 302
    .end local v1    # "in":Ljava/io/DataInputStream;
    :goto_2
    if-eqz p2, :cond_2

    #@29
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@2c
    .line 301
    :cond_2
    throw v3

    #@2d
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v3

    #@2e
    goto :goto_2

    #@2f
    .line 291
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget v1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@2
    .line 138
    iget v2, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@4
    const/4 v3, 0x0

    #@5
    .line 137
    invoke-static {v1, v2, p1, v3}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    #@8
    move-result-object v0

    #@9
    .line 139
    .local v0, "instance":Landroid/gesture/Instance;
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@b
    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@d
    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@f
    iget-object v4, v0, Landroid/gesture/Instance;->vector:[F

    #@11
    invoke-virtual {v1, v2, v3, v4}, Landroid/gesture/Learner;->classify(II[F)Ljava/util/ArrayList;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 195
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@7
    invoke-virtual {v0, p1}, Landroid/gesture/Learner;->removeInstances(Ljava/lang/String;)V

    #@a
    .line 196
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    #@d
    .line 193
    return-void
.end method

.method public removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 4
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    .line 171
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    .line 172
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_0

    #@a
    .line 173
    return-void

    #@b
    .line 176
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 180
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 183
    :cond_1
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    #@1b
    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    #@1e
    move-result-wide v2

    #@1f
    invoke-virtual {v1, v2, v3}, Landroid/gesture/Learner;->removeInstance(J)V

    #@22
    .line 185
    const/4 v1, 0x1

    #@23
    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    #@25
    .line 170
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V

    #@4
    .line 221
    return-void
.end method

.method public save(Ljava/io/OutputStream;Z)V
    .locals 11
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    const/4 v7, 0x0

    #@1
    .line 234
    .local v7, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    #@3
    .line 236
    .local v6, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    new-instance v8, Ljava/io/DataOutputStream;

    #@5
    instance-of v9, p1, Ljava/io/BufferedOutputStream;

    #@7
    if-eqz v9, :cond_1

    #@9
    .end local p1    # "stream":Ljava/io/OutputStream;
    :goto_0
    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 239
    .local v8, "out":Ljava/io/DataOutputStream;
    const/4 v9, 0x1

    #@d
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@10
    .line 241
    .end local v7    # "out":Ljava/io/DataOutputStream;
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@13
    move-result v9

    #@14
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@17
    .line 243
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v9

    #@1b
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_2

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/util/Map$Entry;

    #@2b
    .line 244
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Ljava/lang/String;

    #@31
    .line 245
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/util/ArrayList;

    #@37
    .line 246
    .local v3, "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v0

    #@3b
    .line 249
    .local v0, "count":I
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3e
    .line 251
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@41
    .line 253
    const/4 v4, 0x0

    #@42
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    #@44
    .line 254
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v9

    #@48
    check-cast v9, Landroid/gesture/Gesture;

    #@4a
    invoke-virtual {v9, v8}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4d
    .line 253
    add-int/lit8 v4, v4, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 237
    .end local v0    # "count":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v4    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    .restart local p1    # "stream":Ljava/io/OutputStream;
    :cond_1
    :try_start_2
    new-instance v9, Ljava/io/BufferedOutputStream;

    #@52
    const v10, 0x8000

    #@55
    invoke-direct {v9, p1, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    move-object p1, v9

    #@59
    goto :goto_0

    #@5a
    .line 258
    .end local v7    # "out":Ljava/io/DataOutputStream;
    .end local p1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v8    # "out":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    #@5d
    .line 265
    const/4 v9, 0x0

    #@5e
    iput-boolean v9, p0, Landroid/gesture/GestureStore;->mChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@60
    .line 267
    if-eqz p2, :cond_3

    #@62
    invoke-static {v8}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@65
    .line 225
    :cond_3
    return-void

    #@66
    .line 266
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v9

    #@67
    .line 267
    .end local v7    # "out":Ljava/io/DataOutputStream;
    :goto_2
    if-eqz p2, :cond_4

    #@69
    invoke-static {v7}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@6c
    .line 266
    :cond_4
    throw v9

    #@6d
    .restart local v6    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .restart local v8    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v9

    #@6e
    move-object v7, v8

    #@6f
    .end local v8    # "out":Ljava/io/DataOutputStream;
    .local v7, "out":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public setOrientationStyle(I)V
    .locals 0
    .param p1, "style"    # I

    #@0
    .prologue
    .line 100
    iput p1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    #@2
    .line 99
    return-void
.end method

.method public setSequenceType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 111
    iput p1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    #@2
    .line 110
    return-void
.end method
