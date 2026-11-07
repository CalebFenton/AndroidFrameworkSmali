.class public Landroid/service/notification/ZenModeConfig$ZenRule;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule$ConditionOverride;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OVERRIDE_ACTIVATE:I = 0x1

.field public static final blacklist OVERRIDE_DEACTIVATE:I = 0x2

.field public static final blacklist OVERRIDE_NONE:I


# instance fields
.field public blacklist allowManualInvocation:Z

.field public greylist-max-o component:Landroid/content/ComponentName;

.field public greylist-max-o condition:Landroid/service/notification/Condition;

.field public greylist conditionId:Landroid/net/Uri;

.field blacklist conditionOverride:I

.field public blacklist configurationActivity:Landroid/content/ComponentName;

.field public greylist-max-r creationTime:J

.field public blacklist deletionInstant:Ljava/time/Instant;

.field public blacklist disabledOrigin:I

.field public greylist enabled:Z

.field public greylist-max-o enabler:Ljava/lang/String;

.field public blacklist iconResName:Ljava/lang/String;

.field public greylist-max-o id:Ljava/lang/String;

.field public blacklist lastActivation:Ljava/time/Instant;

.field blacklist legacySuppressedEffects:I

.field public greylist-max-r name:Ljava/lang/String;

.field public blacklist pkg:Ljava/lang/String;

.field public greylist-max-r snoozing:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist triggerDescription:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist userModifiedFields:I

.field public blacklist zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field public blacklist zenDeviceEffectsUserModifiedFields:I

.field public greylist zenMode:I

.field public blacklist zenPolicy:Landroid/service/notification/ZenPolicy;

.field public blacklist zenPolicyUserModifiedFields:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3033
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2610
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2626
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2642
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2610
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2626
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 2646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1e

    move v0, v2

    :cond_1e
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 2647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 2648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2650
    :cond_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 2651
    const-class v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 2652
    const-class v0, Landroid/service/notification/Condition;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 2653
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 2654
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 2655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_67

    .line 2656
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 2658
    :cond_67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 2659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_79

    .line 2660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 2662
    :cond_79
    const-class v0, Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenPolicy;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2663
    const-class v0, Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenDeviceEffects;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 2665
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 2667
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 2668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 2670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 2672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_cd

    .line 2673
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 2675
    :cond_cd
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 2678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2679
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_fb

    .line 2681
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2685
    :cond_fb
    return-void
.end method

.method private static blacklist conditionOverrideToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 2826
    packed-switch p0, :pswitch_data_10

    .line 2830
    const-string v0, "UNKNOWN"

    goto :goto_e

    .line 2828
    :pswitch_6
    const-string v0, "OVERRIDE_DEACTIVATE"

    goto :goto_e

    .line 2827
    :pswitch_9
    const-string v0, "OVERRIDE_ACTIVATE"

    goto :goto_e

    .line 2829
    :pswitch_c
    const-string v0, "OVERRIDE_NONE"

    .line 2826
    :goto_e
    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist copy()Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 3

    .line 2939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2941
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2942
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2943
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 2945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2943
    return-object v1

    .line 2945
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2946
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2706
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2837
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2839
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2840
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2841
    const-wide v2, 0x10300000003L

    iget-wide v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2842
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2843
    const-wide v2, 0x10900000005L

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2844
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    const-wide v3, 0x10800000006L

    if-eqz v2, :cond_4d

    .line 2845
    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_52

    .line 2847
    :cond_4d
    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2849
    :goto_52
    const-wide v2, 0x10e00000007L

    iget v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2850
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v2, :cond_6e

    .line 2851
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2853
    :cond_6e
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_7c

    .line 2854
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/service/notification/Condition;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2856
    :cond_7c
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_8a

    .line 2857
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2859
    :cond_8a
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v2, :cond_98

    .line 2860
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/service/notification/ZenPolicy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2862
    :cond_98
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2863
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 2867
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2868
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2869
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2870
    .local v2, "other":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-ne v3, v4, :cond_c1

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-ne v3, v4, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2872
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v3, v4, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 2874
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 2875
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 2876
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 2877
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 2878
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 2879
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2880
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 2881
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2882
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    if-ne v3, v4, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 2884
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 2885
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-ne v3, v4, :cond_c1

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    if-ne v3, v4, :cond_c1

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-ne v3, v4, :cond_c1

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    if-ne v3, v4, :cond_c1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 2891
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    move v3, v0

    goto :goto_c2

    :cond_c1
    move v3, v1

    .line 2893
    .local v3, "finalEquals":Z
    :goto_c2
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 2894
    if-eqz v3, :cond_de

    iget v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    if-ne v4, v5, :cond_de

    iget v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    if-ne v4, v5, :cond_de

    iget v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    if-ne v4, v5, :cond_de

    move v4, v0

    goto :goto_df

    :cond_de
    move v4, v1

    :goto_df
    move v3, v4

    .line 2898
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 2899
    if-eqz v3, :cond_f4

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2900
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    move v1, v0

    goto :goto_f5

    :cond_f4
    nop

    :goto_f5
    move v3, v1

    .line 2904
    :cond_f6
    return v3
.end method

.method public blacklist getConditionOverride()I
    .registers 2

    .line 2968
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2969
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    return v0

    .line 2971
    :cond_9
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .registers 2

    .line 3019
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3020
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    goto :goto_22

    .line 3021
    :cond_b
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_16

    .line 3022
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 3023
    :cond_16
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_21

    .line 3024
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 3025
    :cond_21
    const/4 v0, 0x0

    .line 3019
    :goto_22
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 28

    .line 2909
    move-object/from16 v0, p0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 2910
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2911
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v14, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2913
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2914
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2915
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    move-object/from16 v22, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2916
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2917
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    move-object/from16 v26, v1

    filled-new-array/range {v2 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    .line 2911
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 2919
    :cond_7d
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v14, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2921
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2922
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2923
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    move-object/from16 v22, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2924
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2925
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    filled-new-array/range {v2 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    .line 2919
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 2928
    :cond_e8
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v14, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2930
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2931
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2932
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    move-object/from16 v22, v1

    filled-new-array/range {v2 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    .line 2928
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isActive()Z
    .registers 4

    .line 2950
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 2951
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_23

    .line 2953
    :cond_13
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    if-ne v0, v1, :cond_18

    .line 2954
    return v1

    .line 2955
    :cond_18
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 2956
    return v2

    .line 2958
    :cond_1e
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    return v0

    .line 2952
    :cond_23
    :goto_23
    return v2

    .line 2961
    :cond_24
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v0, :cond_39

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    return v1
.end method

.method public greylist-max-o isTrueOrUnknown()Z
    .registers 4

    .line 3029
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v0, v0, Landroid/service/notification/Condition;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v0, v0, Landroid/service/notification/Condition;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    :cond_12
    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public blacklist isUserModified()Z
    .registers 2

    .line 2699
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist reconsiderConditionOverride()V
    .registers 3

    .line 3005
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3006
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3007
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    goto :goto_31

    .line 3008
    :cond_15
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_31

    .line 3009
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    goto :goto_31

    .line 3012
    :cond_24
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_31

    .line 3013
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 3016
    :cond_31
    :goto_31
    return-void
.end method

.method public blacklist resetConditionOverride()V
    .registers 2

    .line 2990
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    .line 2991
    return-void
.end method

.method public blacklist setConditionOverride(I)V
    .registers 4
    .param p1, "value"    # I

    .line 2976
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2977
    iput p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    goto :goto_1f

    .line 2979
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 2980
    const-string v0, "ZenModeConfig"

    const-string v1, "Shouldn\'t set OVERRIDE_ACTIVATE if MODES_UI is off"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2981
    :cond_14
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1a

    .line 2982
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    goto :goto_1f

    .line 2983
    :cond_1a
    if-nez p1, :cond_1f

    .line 2984
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 2987
    :cond_1f
    :goto_1f
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2771
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2772
    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_2b

    const-string v1, "STATE_FALSE"

    goto :goto_33

    .line 2773
    :cond_2b
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v1, v1, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2772
    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2774
    const-string v1, ",enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2776
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2777
    const-string v1, ",conditionOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2778
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverrideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 2780
    :cond_61
    const-string v1, ",snoozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2783
    :goto_6c
    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2784
    const-string v2, ",zenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2785
    const-string v2, ",conditionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2786
    const-string v2, ",pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2787
    const-string v2, ",component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2788
    const-string v2, ",configActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2789
    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2790
    const-string v2, ",enabler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2791
    const-string v2, ",zenPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2792
    const-string v2, ",condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2793
    const-string v2, ",deviceEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2794
    const-string v2, ",allowManualInvocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2795
    const-string v2, ",iconResName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2796
    const-string v2, ",triggerDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2797
    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2798
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    if-eqz v1, :cond_136

    .line 2799
    const-string v1, ",userModifiedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 2800
    invoke-static {v2}, Landroid/app/AutomaticZenRule;->fieldsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    :cond_136
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-eqz v1, :cond_149

    .line 2803
    const-string v1, ",zenPolicyUserModifiedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2804
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->fieldsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    :cond_149
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    if-eqz v1, :cond_15c

    .line 2807
    const-string v1, ",zenDeviceEffectsUserModifiedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 2808
    invoke-static {v2}, Landroid/service/notification/ZenDeviceEffects;->fieldsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    :cond_15c
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v1, :cond_16b

    .line 2812
    const-string v1, ",deletionInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2814
    :cond_16b
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v1

    if-eqz v1, :cond_198

    .line 2815
    const-string v1, ",disabledOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2816
    const-string v1, ",legacySuppressedEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2817
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v1

    if-eqz v1, :cond_198

    .line 2818
    const-string v1, ",lastActivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2822
    :cond_198
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2711
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 2714
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2715
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_1c

    .line 2717
    :cond_19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2719
    :goto_1c
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2720
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2721
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2722
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2723
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2724
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 2725
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2726
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_45

    .line 2728
    :cond_42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2730
    :goto_45
    iget-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2731
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 2732
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2733
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_5a

    .line 2735
    :cond_57
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    :goto_5a
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2738
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2739
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2740
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2741
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2742
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2743
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2744
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2747
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v0, :cond_9d

    .line 2748
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a0

    .line 2751
    :cond_9d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    :goto_a0
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 2754
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 2758
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    if-eqz v0, :cond_cc

    .line 2759
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2760
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_cf

    .line 2762
    :cond_cc
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    :cond_cf
    :goto_cf
    return-void
.end method
