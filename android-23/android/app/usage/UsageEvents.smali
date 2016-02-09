.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event;,
        Landroid/app/usage/UsageEvents$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEventCount:I

.field private mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mParcel:Landroid/os/Parcel;

.field private mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 364
    new-instance v0, Landroid/app/usage/UsageEvents$1;

    #@2
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 151
    iput-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    #@7
    .line 154
    iput-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@9
    .line 157
    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@b
    .line 190
    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@d
    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 151
    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    #@7
    .line 154
    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@9
    .line 157
    iput v3, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@b
    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    iput v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@11
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v2

    #@15
    iput v2, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@17
    .line 172
    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@19
    if-lez v2, :cond_0

    #@1b
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    #@21
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    .line 176
    .local v0, "listByteLength":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    .line 177
    .local v1, "positionInParcel":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@2f
    .line 178
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@31
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    #@34
    .line 179
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@39
    move-result v3

    #@3a
    invoke-virtual {v2, p1, v3, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@3d
    .line 180
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@3f
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@41
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    #@44
    move-result v3

    #@45
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataSize(I)V

    #@48
    .line 181
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@4a
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@4d
    .line 169
    .end local v0    # "listByteLength":I
    .end local v1    # "positionInParcel":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .param p2, "stringPool"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const/4 v0, 0x0

    #@1
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 151
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    #@6
    .line 154
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@8
    .line 157
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@b
    .line 198
    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    #@d
    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@13
    .line 200
    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    #@15
    .line 197
    return-void
.end method

.method private findStringIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    #@2
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 251
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 252
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "String \'"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "\' is not in the string pool"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 254
    :cond_0
    return v0
.end method

.method private readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 289
    .local v1, "packageIndex":I
    if-ltz v1, :cond_0

    #@7
    .line 290
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v1

    #@b
    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@d
    .line 295
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    .line 296
    .local v0, "classIndex":I
    if-ltz v0, :cond_1

    #@13
    .line 297
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    #@15
    aget-object v2, v2, v0

    #@17
    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@19
    .line 301
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v2

    #@1d
    iput v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1f
    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@25
    .line 305
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@27
    const/4 v3, 0x5

    #@28
    if-ne v2, v3, :cond_2

    #@2a
    .line 306
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Landroid/content/res/Configuration;

    #@32
    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@34
    .line 287
    :goto_2
    return-void

    #@35
    .line 292
    .end local v0    # "classIndex":I
    :cond_0
    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@37
    goto :goto_0

    #@38
    .line 299
    .restart local v0    # "classIndex":I
    :cond_1
    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@3a
    goto :goto_1

    #@3b
    .line 308
    :cond_2
    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@3d
    goto :goto_2
.end method

.method private writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 262
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 263
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@6
    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    .line 269
    .local v1, "packageIndex":I
    :goto_0
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 270
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@10
    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    .line 274
    .local v0, "classIndex":I
    :goto_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 275
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 276
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 277
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@21
    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@24
    .line 279
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@26
    const/4 v3, 0x5

    #@27
    if-ne v2, v3, :cond_0

    #@29
    .line 280
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@2b
    invoke-virtual {v2, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 260
    :cond_0
    return-void

    #@2f
    .line 265
    .end local v0    # "classIndex":I
    .end local v1    # "packageIndex":I
    :cond_1
    const/4 v1, -0x1

    #@30
    .restart local v1    # "packageIndex":I
    goto :goto_0

    #@31
    .line 272
    :cond_2
    const/4 v0, -0x1

    #@32
    .restart local v0    # "classIndex":I
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 314
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .locals 2
    .param p1, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    #@0
    .prologue
    .line 222
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@2
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 223
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 226
    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@a
    invoke-direct {p0, v0, p1}, Landroid/app/usage/UsageEvents;->readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V

    #@d
    .line 228
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@13
    .line 229
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@15
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@17
    if-lt v0, v1, :cond_1

    #@19
    .line 230
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@1b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 231
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@21
    .line 233
    :cond_1
    const/4 v0, 0x1

    #@22
    return v0
.end method

.method public hasNextEvent()Z
    .locals 2

    #@0
    .prologue
    .line 210
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@2
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public resetToStart()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 243
    iput v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@3
    .line 244
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 245
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    .line 242
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 319
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 320
    iget v4, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    #@8
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 321
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@d
    if-lez v4, :cond_1

    #@f
    .line 322
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    #@11
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 324
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@1b
    move-result-object v3

    #@1c
    .line 328
    .local v3, "p":Landroid/os/Parcel;
    const/4 v4, 0x0

    #@1d
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@20
    .line 329
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    #@23
    if-ge v1, v4, :cond_0

    #@25
    .line 330
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    #@27
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    #@2d
    .line 331
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, v0, v3, p2}, Landroid/app/usage/UsageEvents;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    #@30
    .line 329
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 334
    .end local v0    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    #@36
    move-result v2

    #@37
    .line 337
    .local v2, "listByteLength":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 340
    const/4 v4, 0x0

    #@3b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 343
    const/4 v4, 0x0

    #@3f
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 345
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 318
    .end local v1    # "i":I
    .end local v2    # "listByteLength":I
    .end local v3    # "p":Landroid/os/Parcel;
    :cond_1
    :goto_1
    return-void

    #@46
    .line 344
    .restart local v3    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v4

    #@47
    .line 345
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 344
    throw v4

    #@4b
    .line 348
    .end local v3    # "p":Landroid/os/Parcel;
    :cond_2
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@4d
    if-eqz v4, :cond_3

    #@4f
    .line 350
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@51
    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    #@54
    move-result v4

    #@55
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 353
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@5a
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    #@5d
    move-result v4

    #@5e
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 356
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@63
    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    #@65
    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    #@68
    move-result v5

    #@69
    invoke-virtual {p1, v4, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@6c
    goto :goto_1

    #@6d
    .line 358
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    #@6f
    .line 359
    const-string/jumbo v5, "Either mParcel or mEventsToWrite must not be null"

    #@72
    .line 358
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@75
    throw v4
.end method
