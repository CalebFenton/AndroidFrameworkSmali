.class public final Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;,
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Quality;,
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$MatchType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MATCH_TYPE_EMULATOR_ZONE_ID:I = 0x4

.field public static final blacklist MATCH_TYPE_NA:I = 0x0

.field public static final blacklist MATCH_TYPE_NETWORK_COUNTRY_AND_OFFSET:I = 0x3

.field public static final blacklist MATCH_TYPE_NETWORK_COUNTRY_ONLY:I = 0x2

.field public static final blacklist MATCH_TYPE_TEST_NETWORK_OFFSET_ONLY:I = 0x5

.field public static final blacklist QUALITY_MULTIPLE_ZONES_WITH_DIFFERENT_OFFSETS:I = 0x3

.field public static final blacklist QUALITY_MULTIPLE_ZONES_WITH_SAME_OFFSET:I = 0x2

.field public static final blacklist QUALITY_NA:I = 0x0

.field public static final blacklist QUALITY_SINGLE_ZONE:I = 0x1


# instance fields
.field private blacklist mDebugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMatchType:I

.field private final blacklist mQuality:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mZoneId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$1;

    invoke-direct {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmSlotIndex(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    .line 152
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmZoneId(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmMatchType(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    .line 154
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmQuality(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    .line 155
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    .line 156
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)V

    return-void
.end method

.method public static blacklist createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 3
    .param p0, "slotIndex"    # I
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "slotIndex":I
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v1

    .line 167
    .local v1, "suggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    nop

    .line 168
    const-class v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 169
    .local v2, "debugInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 170
    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->addDebugInfo(Ljava/util/List;)V

    .line 172
    :cond_37
    return-object v1
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 9
    .param p0, "cmd"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "slotIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 404
    .local v1, "zoneId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 405
    .local v2, "quality":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 407
    .local v3, "matchType":Ljava/lang/Integer;
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    if-eqz v4, :cond_86

    .line 408
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c6

    :cond_12
    goto :goto_3b

    :sswitch_13
    const-string v4, "--slot_index"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_3c

    :sswitch_1d
    const-string v4, "--quality"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x2

    goto :goto_3c

    :sswitch_27
    const-string v4, "--zone_id"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_3c

    :sswitch_31
    const-string v4, "--match_type"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    goto :goto_3c

    :goto_3b
    const/4 v4, -0x1

    :goto_3c
    packed-switch v4, :pswitch_data_d8

    .line 426
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 422
    :pswitch_58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseMatchTypeCommandLineArg(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 423
    goto :goto_84

    .line 418
    :pswitch_65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseQualityCommandLineArg(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 419
    goto :goto_84

    .line 414
    :pswitch_72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 415
    goto :goto_84

    .line 410
    :pswitch_77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 411
    nop

    .line 428
    :goto_84
    goto/16 :goto_4

    .line 431
    :cond_86
    if-eqz v0, :cond_be

    .line 435
    new-instance v4, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 436
    .local v4, "builder":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a2

    const-string v6, "_"

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a2

    .line 437
    invoke-virtual {v4, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 439
    :cond_a2
    if-eqz v2, :cond_ab

    .line 440
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 442
    :cond_ab
    if-eqz v3, :cond_b4

    .line 443
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 445
    :cond_b4
    const-string v6, "Command line injection"

    invoke-virtual {v4, v6}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 446
    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v6

    return-object v6

    .line 432
    .end local v4    # "builder":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    :cond_be
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "No slotIndex specified."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_c6
    .sparse-switch
        -0xa64c0ec -> :sswitch_31
        0x4bfc04ee -> :sswitch_27
        0x796d275f -> :sswitch_1d
        0x7b56fcf1 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_77
        :pswitch_72
        :pswitch_65
        :pswitch_58
    .end packed-switch
.end method

.method private static blacklist parseMatchTypeCommandLineArg(Ljava/lang/String;)I
    .registers 4
    .param p0, "arg"    # Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    sparse-switch v0, :sswitch_data_56

    :cond_9
    goto :goto_33

    :sswitch_a
    const-string v0, "emulator"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_34

    :sswitch_14
    const-string v0, "country"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_34

    :sswitch_1e
    const-string/jumbo v0, "test_network"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_34

    :sswitch_29
    const-string v0, "country_with_offset"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_34

    :goto_33
    const/4 v0, -0x1

    :goto_34
    packed-switch v0, :pswitch_data_68

    .line 473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized match_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :pswitch_50
    const/4 v0, 0x5

    return v0

    .line 469
    :pswitch_52
    return v1

    .line 467
    :pswitch_53
    return v2

    .line 465
    :pswitch_54
    const/4 v0, 0x4

    return v0

    :sswitch_data_56
    .sparse-switch
        -0x5eee94fd -> :sswitch_29
        0x212a9381 -> :sswitch_1e
        0x39175796 -> :sswitch_14
        0x4fa4b315 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method private static blacklist parseQualityCommandLineArg(Ljava/lang/String;)I
    .registers 4
    .param p0, "arg"    # Ljava/lang/String;

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_4c

    :cond_9
    goto :goto_2b

    :sswitch_a
    const-string/jumbo v0, "multiple_different"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_2c

    :sswitch_15
    const-string/jumbo v0, "multiple_same"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_2c

    :sswitch_20
    const-string/jumbo v0, "single"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_5a

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :pswitch_48
    const/4 v0, 0x3

    return v0

    .line 454
    :pswitch_4a
    return v1

    .line 452
    :pswitch_4b
    return v2

    :sswitch_data_4c
    .sparse-switch
        -0x35c77bb8 -> :sswitch_20
        -0x26c2e2cb -> :sswitch_15
        0x60129cca -> :sswitch_a
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_48
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 479
    const-string v0, "Telephony suggestion options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const-string v0, "  --slot_index <number>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string v0, "  To withdraw a previous suggestion:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string v0, "    [--zone_id \"_\"]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    const-string v0, "  To make a new suggestion:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const-string v0, "    --zone_id <Olson ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const-string v0, "    --quality <single|multiple_same|multiple_different>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const-string v0, "    --match_type <emulator|country_with_offset|country|test_network>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_b

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    .line 250
    :cond_b
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public blacklist addDebugInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "debugInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_f

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    .line 262
    :cond_f
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 267
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 268
    return v0

    .line 270
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 273
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 274
    .local v2, "that":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    iget v3, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    iget v4, v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    iget v4, v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    iget v4, v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    .line 277
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 274
    :goto_33
    return v0

    .line 271
    .end local v2    # "that":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :cond_34
    :goto_34
    return v1
.end method

.method public blacklist getDebugInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_9

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 237
    :goto_f
    return-object v0
.end method

.method public blacklist getMatchType()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    return v0
.end method

.method public blacklist getQuality()I
    .registers 2

    .line 227
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    return v0
.end method

.method public blacklist getSlotIndex()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    return v0
.end method

.method public blacklist getZoneId()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 282
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    iget v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTimeZoneSuggestion{mSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 177
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 182
    return-void
.end method
