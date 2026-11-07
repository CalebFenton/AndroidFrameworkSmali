.class public Landroid/gesture/GestureStore;
.super Ljava/lang/Object;
.source "GestureStore.java"


# static fields
.field private static final greylist-max-o FILE_FORMAT_VERSION:S = 0x1s

.field public static final whitelist ORIENTATION_INVARIANT:I = 0x1

.field public static final whitelist ORIENTATION_SENSITIVE:I = 0x2

.field static final greylist-max-o ORIENTATION_SENSITIVE_4:I = 0x4

.field static final greylist-max-o ORIENTATION_SENSITIVE_8:I = 0x8

.field private static final greylist-max-o PROFILE_LOADING_SAVING:Z = false

.field public static final whitelist SEQUENCE_INVARIANT:I = 0x1

.field public static final whitelist SEQUENCE_SENSITIVE:I = 0x2


# instance fields
.field private greylist-max-o mChanged:Z

.field private greylist-max-o mClassifier:Landroid/gesture/Learner;

.field private final greylist-max-o mNamedGestures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Gesture;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mOrientationStyle:I

.field private greylist-max-o mSequenceType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    .line 80
    iput v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 90
    new-instance v0, Landroid/gesture/InstanceLearner;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    .line 91
    return-void
.end method

.method private greylist-max-o readFormatV1(Ljava/io/DataInputStream;)V
    .registers 13
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    .line 308
    .local v0, "classifier":Landroid/gesture/Learner;
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 309
    .local v1, "namedGestures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 312
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 314
    .local v2, "entriesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_39

    .line 316
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 320
    .local v5, "gestureCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v6, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1c
    if-ge v7, v5, :cond_33

    .line 322
    invoke-static {p1}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;

    move-result-object v8

    .line 323
    .local v8, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget v9, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v10, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 325
    invoke-static {v9, v10, v8, v4}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v9

    .line 324
    invoke-virtual {v0, v9}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    .line 321
    .end local v8    # "gesture":Landroid/gesture/Gesture;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 328
    .end local v7    # "j":I
    :cond_33
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "gestureCount":I
    .end local v6    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 330
    .end local v3    # "i":I
    :cond_39
    return-void
.end method


# virtual methods
.method public whitelist addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 7
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .line 149
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 152
    :cond_9
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_1e

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 155
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 159
    invoke-static {v2, v3, p2, p1}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 161
    return-void

    .line 150
    .end local v0    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist getGestureEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 207
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-eqz v0, :cond_10

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 210
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getLearner()Landroid/gesture/Learner;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    return-object v0
.end method

.method public whitelist getOrientationStyle()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    return v0
.end method

.method public whitelist getSequenceType()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    return v0
.end method

.method public whitelist hasChanged()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return v0
.end method

.method public whitelist load(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V

    .line 276
    return-void
.end method

.method public whitelist load(Ljava/io/InputStream;Z)V
    .registers 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    instance-of v2, p1, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_9

    move-object v2, p1

    goto :goto_11

    .line 282
    :cond_9
    new-instance v2, Ljava/io/BufferedInputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_11
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 290
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 291
    .local v1, "versionNumber":S
    packed-switch v1, :pswitch_data_2e

    goto :goto_20

    .line 293
    :pswitch_1d
    invoke-direct {p0, v0}, Landroid/gesture/GestureStore;->readFormatV1(Ljava/io/DataInputStream;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_26

    .line 302
    .end local v1    # "versionNumber":S
    :goto_20
    if-eqz p2, :cond_25

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 304
    :cond_25
    return-void

    .line 302
    :catchall_26
    move-exception v1

    if-eqz p2, :cond_2c

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 303
    :cond_2c
    throw v1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .line 137
    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v0

    .line 139
    .local v0, "instance":Landroid/gesture/Instance;
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    iget-object v4, v0, Landroid/gesture/Instance;->vector:[F

    invoke-virtual {v1, v2, v3, v4}, Landroid/gesture/Learner;->classify(II[F)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist removeEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "entryName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {v0, p1}, Landroid/gesture/Learner;->removeInstances(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 197
    return-void
.end method

.method public whitelist removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 7
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .line 171
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 172
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_b

    .line 173
    return-void

    .line 176
    :cond_b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 180
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_19
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/gesture/Learner;->removeInstance(J)V

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 186
    return-void
.end method

.method public whitelist save(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V

    .line 223
    return-void
.end method

.method public whitelist save(Ljava/io/OutputStream;Z)V
    .registers 12
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    .line 234
    .local v0, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 236
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    new-instance v2, Ljava/io/DataOutputStream;

    instance-of v3, p1, Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_b

    move-object v3, p1

    goto :goto_13

    .line 237
    :cond_b
    new-instance v3, Ljava/io/BufferedOutputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_13
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 244
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 246
    .local v5, "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 249
    .local v6, "count":I
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4d
    if-ge v7, v6, :cond_5b

    .line 254
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/gesture/Gesture;

    invoke-virtual {v8, v0}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 256
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_5b
    goto :goto_2a

    .line 258
    :cond_5c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 265
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/gesture/GestureStore;->mChanged:Z
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_68

    .line 267
    .end local v1    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    if-eqz p2, :cond_67

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 269
    :cond_67
    return-void

    .line 267
    :catchall_68
    move-exception v1

    if-eqz p2, :cond_6e

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 268
    :cond_6e
    throw v1
.end method

.method public whitelist setOrientationStyle(I)V
    .registers 2
    .param p1, "style"    # I

    .line 100
    iput p1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 101
    return-void
.end method

.method public whitelist setSequenceType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 111
    iput p1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    .line 112
    return-void
.end method
