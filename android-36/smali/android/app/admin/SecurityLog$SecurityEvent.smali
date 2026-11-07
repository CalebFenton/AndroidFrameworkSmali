.class public final Landroid/app/admin/SecurityLog$SecurityEvent;
.super Ljava/lang/Object;
.source "SecurityLog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityEvent"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mEvent:Landroid/util/EventLog$Event;

.field private greylist-max-o mId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 895
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent$1;

    invoke-direct {v0}, Landroid/app/admin/SecurityLog$SecurityEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J[B)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    .line 695
    invoke-static {p3}, Landroid/util/EventLog$Event;->fromBytes([B)Landroid/util/EventLog$Event;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    .line 696
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 689
    return-void
.end method

.method constructor greylist-max-r <init>([B)V
    .registers 4
    .param p1, "data"    # [B

    .line 680
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 681
    return-void
.end method

.method private greylist-max-o getSuccess()Z
    .registers 6

    .line 795
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 796
    .local v0, "data":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_c

    goto :goto_25

    .line 800
    :cond_c
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    .line 801
    .local v2, "array":[Ljava/lang/Object;
    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_24

    aget-object v3, v2, v1

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_24

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_24

    move v1, v4

    :cond_24
    return v1

    .line 797
    .end local v2    # "array":[Ljava/lang/Object;
    :cond_25
    :goto_25
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 913
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 914
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 915
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 916
    .local v2, "other":Landroid/app/admin/SecurityLog$SecurityEvent;
    iget-object v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v4, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v3, v4}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-wide v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    iget-wide v5, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 914
    .end local v2    # "other":Landroid/app/admin/SecurityLog$SecurityEvent;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public blacklist eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .registers 4
    .param p1, "other"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 929
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v1, p1, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0, v1}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist getData()Ljava/lang/Object;
    .registers 2

    .line 716
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()J
    .registers 3

    .line 741
    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-wide v0
.end method

.method public blacklist getIntegerData(I)I
    .registers 3
    .param p1, "index"    # I

    .line 721
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getLogLevel()I
    .registers 5

    .line 748
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 789
    :pswitch_a
    return v3

    .line 787
    :pswitch_b
    return v1

    .line 775
    :pswitch_c
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    move v2, v3

    :cond_13
    return v2

    .line 785
    :pswitch_14
    return v2

    .line 781
    :pswitch_15
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v3

    :cond_1c
    return v1

    .line 772
    :pswitch_1d
    return v3

    :pswitch_data_1e
    .packed-switch 0x33451
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_15
        :pswitch_c
        :pswitch_c
        :pswitch_14
        :pswitch_b
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist getStringData(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 726
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTag()I
    .registers 2

    .line 709
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v0

    return v0
.end method

.method public whitelist getTimeNanos()J
    .registers 3

    .line 702
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 924
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-wide v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist redact(I)Landroid/app/admin/SecurityLog$SecurityEvent;
    .registers 8
    .param p1, "accessingUser"    # I

    .line 817
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_7c

    .line 873
    const/16 v0, -0x2710

    .local v0, "userId":I
    goto :goto_72

    .line 867
    .end local v0    # "userId":I
    :sswitch_f
    :try_start_f
    invoke-virtual {p0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    .line 870
    .restart local v0    # "userId":I
    goto :goto_72

    .line 868
    .end local v0    # "userId":I
    :catch_14
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_16
    :try_start_16
    invoke-virtual {p0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 863
    .local v0, "userId":I
    goto :goto_72

    .line 861
    .end local v0    # "userId":I
    :catch_1f
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_21
    :try_start_21
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26

    .line 847
    .local v0, "userId":I
    goto :goto_72

    .line 845
    .end local v0    # "userId":I
    :catch_26
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_28
    :try_start_28
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    .line 856
    .local v0, "userId":I
    goto :goto_72

    .line 854
    .end local v0    # "userId":I
    :catch_31
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_33
    const/4 v0, 0x0

    :try_start_34
    invoke-virtual {p0, v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getStringData(I)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_51

    .line 828
    .local v0, "mountPoint":Ljava/lang/String;
    nop

    .line 829
    new-instance v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v3

    iget-object v5, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 830
    invoke-virtual {v5, v2}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    .line 829
    return-object v1

    .line 826
    .end local v0    # "mountPoint":Ljava/lang/String;
    :catch_51
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    .line 833
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_53
    :try_start_53
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_5c

    .line 836
    .local v0, "userId":I
    goto :goto_72

    .line 834
    .end local v0    # "userId":I
    :catch_5c
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    .line 819
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_5e
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v3

    iget-object v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v1, v2}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-object v0

    .line 877
    .local v0, "userId":I
    :goto_72
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_7a

    if-ne p1, v0, :cond_79

    goto :goto_7a

    .line 880
    :cond_79
    return-object v4

    .line 878
    :cond_7a
    :goto_7a
    return-object p0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x33452 -> :sswitch_5e
        0x33455 -> :sswitch_53
        0x3345d -> :sswitch_33
        0x3345e -> :sswitch_33
        0x33468 -> :sswitch_28
        0x33469 -> :sswitch_28
        0x3346a -> :sswitch_28
        0x3346d -> :sswitch_21
        0x3346e -> :sswitch_21
        0x33470 -> :sswitch_16
        0x33474 -> :sswitch_f
        0x33479 -> :sswitch_21
        0x3347a -> :sswitch_21
        0x3347b -> :sswitch_21
    .end sparse-switch
.end method

.method public greylist-max-o setId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 733
    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    .line 734
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 891
    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 892
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 893
    return-void
.end method
