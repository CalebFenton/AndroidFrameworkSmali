.class final Landroid/gesture/Gesture$1;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/gesture/Gesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gesture/Gesture;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 285
    const/4 v1, 0x0

    #@1
    .line 286
    .local v1, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4
    move-result-wide v2

    #@5
    .line 288
    .local v2, "gestureID":J
    new-instance v4, Ljava/io/DataInputStream;

    #@7
    .line 289
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@c
    move-result-object v6

    #@d
    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    .line 288
    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    .line 292
    .local v4, "inStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {v4}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v1

    #@17
    .line 296
    .local v1, "gesture":Landroid/gesture/Gesture;
    invoke-static {v4}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@1a
    .line 299
    .end local v1    # "gesture":Landroid/gesture/Gesture;
    :goto_0
    if-eqz v1, :cond_0

    #@1c
    .line 300
    invoke-static {v1, v2, v3}, Landroid/gesture/Gesture;->-set0(Landroid/gesture/Gesture;J)J

    #@1f
    .line 303
    :cond_0
    return-object v1

    #@20
    .line 293
    .local v1, "gesture":Landroid/gesture/Gesture;
    :catch_0
    move-exception v0

    #@21
    .line 294
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v5, "Gestures"

    #@24
    const-string/jumbo v6, "Error reading Gesture from parcel:"

    #@27
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 296
    invoke-static {v4}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@2d
    goto :goto_0

    #@2e
    .line 295
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@2f
    .line 296
    invoke-static {v4}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@32
    .line 295
    throw v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 284
    invoke-virtual {p0, p1}, Landroid/gesture/Gesture$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gesture/Gesture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/gesture/Gesture;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 307
    new-array v0, p1, [Landroid/gesture/Gesture;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 306
    invoke-virtual {p0, p1}, Landroid/gesture/Gesture$1;->newArray(I)[Landroid/gesture/Gesture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
