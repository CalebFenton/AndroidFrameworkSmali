.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIDE_LOCUS_EVENTS:I = 0x8

.field public static final blacklist HIDE_SHORTCUT_EVENTS:I = 0x2

.field public static final greylist-max-o INSTANT_APP_CLASS_NAME:Ljava/lang/String; = "android.instant_class"

.field public static final greylist-max-o INSTANT_APP_PACKAGE_NAME:Ljava/lang/String; = "android.instant_app"

.field public static final blacklist OBFUSCATED_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "unknown_channel_id"

.field public static final blacklist OBFUSCATE_INSTANT_APPS:I = 0x1

.field public static final blacklist OBFUSCATE_NOTIFICATION_EVENTS:I = 0x4

.field public static final blacklist SHOW_ALL_EVENT_DATA:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UsageEvents"


# instance fields
.field private greylist-max-p mEventCount:I

.field private greylist-max-p mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIncludeTaskRoots:Z

.field private greylist-max-p mIndex:I

.field private greylist mParcel:Landroid/os/Parcel;

.field private greylist-max-p mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1187
    new-instance v0, Landroid/app/usage/UsageEvents$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 793
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 869
    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 871
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 793
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 817
    invoke-static {}, Landroid/app/usage/Flags;->useParceledList()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 818
    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents;->readUsageEventsFromParcelWithParceledList(Landroid/os/Parcel;)V

    goto :goto_18

    .line 820
    :cond_15
    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents;->readUsageEventsFromParcelWithBlob(Landroid/os/Parcel;)V

    .line 823
    :goto_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 824
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .param p2, "stringPool"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 879
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 880
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;[Ljava/lang/String;Z)V
    .registers 5
    .param p2, "stringPool"    # [Ljava/lang/String;
    .param p3, "includeTaskRoots"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 886
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 793
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 887
    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 888
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 889
    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 890
    iput-boolean p3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 891
    return-void
.end method

.method private greylist-max-p findStringIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 958
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 959
    .local v0, "index":I
    if-ltz v0, :cond_9

    .line 962
    return v0

    .line 960
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getNextEventFromParceledList(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 4
    .param p1, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 938
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p1, v0}, Landroid/app/usage/UsageEvents$Event;->-$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V

    .line 939
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 940
    return v1
.end method

.method private greylist-max-p readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V
    .registers 10
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1044
    .local v0, "packageIndex":I
    const/4 v1, 0x0

    if-ltz v0, :cond_e

    .line 1045
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto :goto_10

    .line 1047
    :cond_e
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1050
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1051
    .local v2, "classIndex":I
    if-ltz v2, :cond_1d

    .line 1052
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto :goto_1f

    .line 1054
    :cond_1d
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 1056
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 1058
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1059
    .local v3, "taskRootPackageIndex":I
    if-ltz v3, :cond_32

    .line 1060
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_34

    .line 1062
    :cond_32
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1065
    :goto_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1066
    .local v4, "taskRootClassIndex":I
    if-ltz v4, :cond_41

    .line 1067
    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_43

    .line 1069
    :cond_41
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 1072
    :goto_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1073
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1076
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 1077
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 1078
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1079
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1080
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1081
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 1082
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 1083
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 1085
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v1, :sswitch_data_bc

    goto :goto_b4

    .line 1105
    :sswitch_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 1106
    goto :goto_b4

    .line 1102
    :sswitch_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 1103
    goto :goto_b4

    .line 1099
    :sswitch_73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 1100
    goto :goto_b4

    .line 1094
    :sswitch_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1097
    goto :goto_b4

    .line 1091
    :sswitch_8d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 1092
    goto :goto_b4

    .line 1108
    :sswitch_94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b4

    .line 1109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_b4

    .line 1088
    :sswitch_a9
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 1089
    nop

    .line 1113
    :cond_b4
    :goto_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 1114
    return-void

    nop

    :sswitch_data_bc
    .sparse-switch
        0x5 -> :sswitch_a9
        0x7 -> :sswitch_94
        0x8 -> :sswitch_8d
        0x9 -> :sswitch_7a
        0xb -> :sswitch_73
        0xc -> :sswitch_6c
        0x1e -> :sswitch_65
    .end sparse-switch
.end method

.method private blacklist readUsageEventsFromParcelWithBlob(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    .line 846
    .local v0, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 847
    .local v1, "data":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 848
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 851
    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v2, :cond_52

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 854
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 855
    .local v2, "listByteLength":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 856
    .local v4, "positionInParcel":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 857
    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 858
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v3, v1, v5, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 859
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 860
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 862
    .end local v2    # "listByteLength":I
    .end local v4    # "positionInParcel":I
    :cond_52
    return-void
.end method

.method private blacklist readUsageEventsFromParcelWithParceledList(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 829
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/usage/ParcelableUsageEventList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ParcelableUsageEventList;

    .line 831
    .local v0, "slice":Landroid/app/usage/ParcelableUsageEventList;
    if-eqz v0, :cond_25

    .line 832
    invoke-virtual {v0}, Landroid/app/usage/ParcelableUsageEventList;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    goto :goto_2c

    .line 834
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 837
    :goto_2c
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_68

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Partial usage event list received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 839
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 838
    const-string v2, "UsageEvents"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 842
    :cond_68
    return-void
.end method

.method private greylist-max-p writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 971
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 972
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "packageIndex":I
    goto :goto_c

    .line 974
    .end local v0    # "packageIndex":I
    :cond_b
    const/4 v0, -0x1

    .line 978
    .restart local v0    # "packageIndex":I
    :goto_c
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 979
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "classIndex":I
    goto :goto_18

    .line 981
    .end local v1    # "classIndex":I
    :cond_17
    const/4 v1, -0x1

    .line 985
    .restart local v1    # "classIndex":I
    :goto_18
    iget-boolean v2, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    if-eqz v2, :cond_27

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 986
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "taskRootPackageIndex":I
    goto :goto_28

    .line 988
    .end local v2    # "taskRootPackageIndex":I
    :cond_27
    const/4 v2, -0x1

    .line 992
    .restart local v2    # "taskRootPackageIndex":I
    :goto_28
    iget-boolean v3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    if-eqz v3, :cond_37

    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 993
    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, "taskRootClassIndex":I
    goto :goto_38

    .line 995
    .end local v3    # "taskRootClassIndex":I
    :cond_37
    const/4 v3, -0x1

    .line 997
    .restart local v3    # "taskRootClassIndex":I
    :goto_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1005
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v4, :sswitch_data_a0

    goto :goto_9a

    .line 1024
    :sswitch_59
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    goto :goto_9a

    .line 1021
    :sswitch_5f
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1022
    goto :goto_9a

    .line 1018
    :sswitch_65
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    goto :goto_9a

    .line 1013
    :sswitch_6b
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1014
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1016
    goto :goto_9a

    .line 1010
    :sswitch_7b
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1011
    goto :goto_9a

    .line 1027
    :sswitch_81
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v4, :cond_8f

    .line 1028
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    goto :goto_9a

    .line 1031
    :cond_8f
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9a

    .line 1007
    :sswitch_94
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1008
    nop

    .line 1035
    :goto_9a
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    return-void

    :sswitch_data_a0
    .sparse-switch
        0x5 -> :sswitch_94
        0x7 -> :sswitch_81
        0x8 -> :sswitch_7b
        0x9 -> :sswitch_6b
        0xb -> :sswitch_65
        0xc -> :sswitch_5f
        0x1e -> :sswitch_59
    .end sparse-switch
.end method

.method private blacklist writeUsageEventsToParcelWithBlob(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, "data":Landroid/os/Parcel;
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v1, :cond_77

    .line 1141
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1143
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1147
    .local v1, "p":Landroid/os/Parcel;
    :try_start_20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v3, v4, :cond_36

    .line 1149
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    .line 1150
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, v4, v1, p2}, Landroid/app/usage/UsageEvents;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    .line 1148
    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1153
    .end local v3    # "i":I
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1156
    .local v3, "listByteLength":I
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_48

    .line 1164
    .end local v3    # "listByteLength":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    nop

    .line 1167
    .end local v1    # "p":Landroid/os/Parcel;
    goto :goto_77

    .line 1164
    .restart local v1    # "p":Landroid/os/Parcel;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    throw v2

    .line 1167
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_4d
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_6f

    .line 1169
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_77

    .line 1177
    :cond_6f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either mParcel or mEventsToWrite must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    :cond_77
    :goto_77
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    return-void
.end method

.method private blacklist writeUsageEventsToParcelWithParceledList(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1131
    iget v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    new-instance v0, Landroid/app/usage/ParcelableUsageEventList;

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/app/usage/ParcelableUsageEventList;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1134
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 5
    .param p1, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 912
    if-eqz p1, :cond_45

    .line 915
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_a

    .line 916
    const/4 v0, 0x0

    return v0

    .line 919
    :cond_a
    invoke-static {}, Landroid/app/usage/Flags;->useParceledList()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 920
    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEventFromParceledList(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v0

    return v0

    .line 923
    :cond_15
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_1f

    .line 924
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v0, p1}, Landroid/app/usage/UsageEvents;->readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V

    goto :goto_2c

    .line 926
    :cond_1f
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p1, v0}, Landroid/app/usage/UsageEvents$Event;->-$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V

    .line 929
    :goto_2c
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 930
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v2, :cond_44

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_44

    .line 931
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 934
    :cond_44
    return v1

    .line 913
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given eventOut must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasNextEvent()Z
    .registers 3

    .line 900
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o resetToStart()V
    .registers 3

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 951
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_c

    .line 952
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 954
    :cond_c
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1123
    invoke-static {}, Landroid/app/usage/Flags;->useParceledList()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1124
    invoke-direct {p0, p1, p2}, Landroid/app/usage/UsageEvents;->writeUsageEventsToParcelWithParceledList(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 1126
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/app/usage/UsageEvents;->writeUsageEventsToParcelWithBlob(Landroid/os/Parcel;I)V

    .line 1128
    :goto_d
    return-void
.end method
