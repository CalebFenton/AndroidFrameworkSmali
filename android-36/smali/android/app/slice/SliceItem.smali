.class public final Landroid/app/slice/SliceItem;
.super Ljava/lang/Object;
.source "SliceItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/SliceItem$SliceType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FORMAT_ACTION:Ljava/lang/String; = "action"

.field public static final whitelist FORMAT_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final whitelist FORMAT_IMAGE:Ljava/lang/String; = "image"

.field public static final whitelist FORMAT_INT:Ljava/lang/String; = "int"

.field public static final whitelist FORMAT_LONG:Ljava/lang/String; = "long"

.field public static final whitelist FORMAT_REMOTE_INPUT:Ljava/lang/String; = "input"

.field public static final whitelist FORMAT_SLICE:Ljava/lang/String; = "slice"

.field public static final whitelist FORMAT_TEXT:Ljava/lang/String; = "text"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceItem"


# instance fields
.field private final greylist-max-o mFormat:Ljava/lang/String;

.field protected greylist-max-o mHints:[Ljava/lang/String;

.field private final greylist-max-o mObj:Ljava/lang/Object;

.field private final greylist-max-o mSubType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 371
    new-instance v0, Landroid/app/slice/SliceItem$1;

    invoke-direct {v0}, Landroid/app/slice/SliceItem$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "slice"    # Landroid/app/slice/Slice;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "subType"    # Ljava/lang/String;
    .param p5, "hints"    # [Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/app/slice/SliceItem;->readObj(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .param p4, "hints"    # [Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p4, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 141
    iput-object p2, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private static greylist-max-o getBaseType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 316
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 317
    .local v0, "index":I
    if-ltz v0, :cond_e

    .line 318
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 320
    :cond_e
    return-object p0
.end method

.method private static greylist-max-o readObj(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 348
    invoke-static {p0}, Landroid/app/slice/SliceItem;->getBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_ca

    :cond_b
    goto :goto_62

    :sswitch_c
    const-string/jumbo v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_63

    :sswitch_17
    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_63

    :sswitch_22
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_63

    :sswitch_2d
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_63

    :sswitch_38
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_63

    :sswitch_43
    const-string/jumbo v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_63

    :sswitch_4e
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_63

    :sswitch_58
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_63

    :goto_62
    const/4 v0, -0x1

    :goto_63
    packed-switch v0, :pswitch_data_ec

    .line 368
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :pswitch_7f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 364
    :pswitch_86
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_8d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 360
    :pswitch_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 356
    :pswitch_9f
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 357
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    sget-object v2, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 358
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/Slice;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    return-object v0

    .line 354
    :pswitch_b5
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 352
    :pswitch_bc
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_c3
    sget-object v0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :sswitch_data_ca
    .sparse-switch
        -0x54d081ca -> :sswitch_58
        -0x5220cf7e -> :sswitch_4e
        0x197ef -> :sswitch_43
        0x32c67c -> :sswitch_38
        0x36452d -> :sswitch_2d
        0x5faa95b -> :sswitch_22
        0x5fb57ca -> :sswitch_17
        0x6873d92 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_bc
        :pswitch_b5
        :pswitch_9f
        :pswitch_96
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
    .end packed-switch
.end method

.method private static greylist-max-o writeObj(Landroid/os/Parcel;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/String;

    .line 324
    invoke-static {p3}, Landroid/app/slice/SliceItem;->getBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_a2

    :cond_b
    goto :goto_62

    :sswitch_c
    const-string/jumbo v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_63

    :sswitch_17
    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_63

    :sswitch_22
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_63

    :sswitch_2d
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_63

    :sswitch_38
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_63

    :sswitch_43
    const-string/jumbo v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_63

    :sswitch_4e
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_63

    :sswitch_58
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_63

    :goto_62
    const/4 v0, -0x1

    :goto_63
    packed-switch v0, :pswitch_data_c4

    goto :goto_a0

    .line 342
    :pswitch_67
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a0

    .line 339
    :pswitch_72
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    goto :goto_a0

    .line 336
    :pswitch_7d
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 337
    goto :goto_a0

    .line 332
    :pswitch_84
    move-object v0, p2

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, p1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    move-object v0, p2

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    invoke-virtual {v0, p0, p1}, Landroid/app/slice/Slice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    goto :goto_a0

    .line 329
    :pswitch_99
    move-object v0, p2

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    nop

    .line 345
    :goto_a0
    return-void

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x54d081ca -> :sswitch_58
        -0x5220cf7e -> :sswitch_4e
        0x197ef -> :sswitch_43
        0x32c67c -> :sswitch_38
        0x36452d -> :sswitch_2d
        0x5faa95b -> :sswitch_22
        0x5fb57ca -> :sswitch_17
        0x6873d92 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_84
        :pswitch_7d
        :pswitch_72
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()Landroid/app/PendingIntent;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFormat()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getInt()I
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getLong()J
    .registers 3

    .line 255
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRemoteInput()Landroid/app/RemoteInput;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/RemoteInput;

    return-object v0
.end method

.method public greylist-max-o getRemoteView()Landroid/widget/RemoteViews;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .registers 3

    .line 245
    const-string v0, "action"

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 246
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    return-object v0

    .line 248
    :cond_15
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist getSubType()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o hasAnyHints([Ljava/lang/String;)Z
    .registers 7
    .param p1, "hints"    # [Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 307
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 308
    .local v3, "hint":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 309
    const/4 v0, 0x1

    return v0

    .line 307
    .end local v3    # "hint":Ljava/lang/String;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 312
    :cond_17
    return v0
.end method

.method public whitelist hasHint(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hint"    # Ljava/lang/String;

    .line 263
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasHints([Ljava/lang/String;)Z
    .registers 8
    .param p1, "hints"    # [Ljava/lang/String;

    .line 293
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 294
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1d

    aget-object v4, p1, v3

    .line 295
    .local v4, "hint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 296
    return v2

    .line 294
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 299
    :cond_1d
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Landroid/app/slice/SliceItem;->writeObj(Landroid/os/Parcel;ILjava/lang/Object;Ljava/lang/String;)V

    .line 287
    return-void
.end method
