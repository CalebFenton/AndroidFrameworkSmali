.class final Landroid/widget/RemoteViews$NightModeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NightModeReflectionAction"
.end annotation


# instance fields
.field private final blacklist mDarkValue:Ljava/lang/Object;

.field private final blacklist mLightValue:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "lightValue"    # Ljava/lang/Object;
    .param p5, "darkValue"    # Ljava/lang/Object;

    .line 3749
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 3750
    iput-object p4, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3751
    iput-object p5, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3752
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3755
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 3756
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    sparse-switch v0, :sswitch_data_5c

    .line 3770
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected night mode action type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3758
    :sswitch_23
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3759
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3760
    goto :goto_5a

    .line 3762
    :sswitch_34
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3763
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3764
    goto :goto_5a

    .line 3766
    :sswitch_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3768
    nop

    .line 3772
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0x4 -> :sswitch_45
        0xf -> :sswitch_34
        0x10 -> :sswitch_23
    .end sparse-switch
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 9
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3849
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3851
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 3852
    .local v3, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c2

    .line 3853
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_d4

    .line 3900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3901
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3900
    const-string v6, "RemoteViews"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3896
    :pswitch_39
    nop

    .line 3897
    const-wide v5, 0x10500000009L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3896
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3898
    goto :goto_e

    .line 3890
    :pswitch_4b
    nop

    .line 3891
    const-wide v5, 0x10b00000008L

    invoke-static {p0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 3890
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3894
    goto :goto_e

    .line 3885
    :pswitch_59
    nop

    .line 3886
    const-wide v5, 0x10b00000007L

    invoke-static {p0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 3885
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3888
    goto :goto_e

    .line 3881
    :pswitch_67
    nop

    .line 3882
    const-wide v5, 0x10500000006L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3881
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3883
    goto :goto_e

    .line 3874
    :pswitch_79
    nop

    .line 3876
    invoke-static {p0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 3874
    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3879
    goto :goto_e

    .line 3869
    :pswitch_82
    nop

    .line 3870
    const-wide v5, 0x10b00000004L

    invoke-static {p0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 3869
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3872
    goto/16 :goto_e

    .line 3864
    :pswitch_91
    nop

    .line 3865
    const-wide v5, 0x10500000003L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3864
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3867
    goto/16 :goto_e

    .line 3859
    :pswitch_a4
    nop

    .line 3860
    const-wide v5, 0x10900000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 3859
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3862
    goto/16 :goto_e

    .line 3855
    :pswitch_b3
    nop

    .line 3856
    const-wide v5, 0x10900000001L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 3855
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3857
    goto/16 :goto_e

    .line 3904
    :cond_c2
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3906
    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_ea

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3910
    new-instance v1, Landroid/widget/RemoteViews$NightModeReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$NightModeReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v1

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a4
        :pswitch_91
        :pswitch_82
        :pswitch_79
        :pswitch_67
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_ea
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000003L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 14
    .param p0, "values"    # Landroid/util/LongSparseArray;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3911
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 3913
    .local v3, "viewId":I
    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 3915
    .local v4, "methodName":Ljava/lang/String;
    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3917
    .local v5, "parameterType":I
    sparse-switch v5, :sswitch_data_ca

    .line 3946
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameterType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3919
    :sswitch_40
    nop

    .line 3920
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    .line 3922
    .local v0, "pendingLightIcon":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/graphics/drawable/Icon;>;"
    nop

    .line 3923
    const-wide v1, 0x10b00000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$PendingResources;

    .line 3925
    .local v1, "pendingDarkIcon":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/graphics/drawable/Icon;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_62

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    goto :goto_63

    .line 3926
    :cond_62
    move-object v6, v2

    :goto_63
    nop

    .line 3927
    .local v6, "lightIcon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_6e

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    move-object v7, v2

    goto :goto_6f

    .line 3928
    :cond_6e
    move-object v7, v2

    :goto_6f
    nop

    .line 3929
    .local v7, "darkIcon":Landroid/graphics/drawable/Icon;
    new-instance v2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 3932
    .end local v0    # "pendingLightIcon":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/graphics/drawable/Icon;>;"
    .end local v1    # "pendingDarkIcon":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/graphics/drawable/Icon;>;"
    .end local v6    # "lightIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "darkIcon":Landroid/graphics/drawable/Icon;
    :sswitch_76
    new-instance v2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 3933
    const-wide v0, 0x10b00000005L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/res/ColorStateList;

    .line 3936
    const-wide v0, 0x10b00000008L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/res/ColorStateList;

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 3932
    return-object v2

    .line 3940
    :sswitch_94
    new-instance v2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 3942
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3941
    const-wide v6, 0x10500000006L

    invoke-virtual {p0, v6, v7, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3944
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3943
    const-wide v7, 0x10500000009L

    invoke-virtual {p0, v7, v8, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 3940
    return-object v2

    nop

    :sswitch_data_ca
    .sparse-switch
        0x4 -> :sswitch_94
        0xf -> :sswitch_76
        0x10 -> :sswitch_40
    .end sparse-switch
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3814
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3801
    const/16 v0, 0x1e

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3793
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 3795
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3796
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    goto :goto_17

    :cond_15
    iget-object v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    :goto_17
    return-object v1
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3806
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    .line 3807
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3808
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3810
    :cond_14
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3776
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3777
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    sparse-switch v0, :sswitch_data_30

    goto :goto_2e

    .line 3780
    :sswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3781
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3782
    goto :goto_2e

    .line 3784
    :sswitch_18
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3785
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3788
    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_18
        0xf -> :sswitch_9
        0x10 -> :sswitch_9
    .end sparse-switch
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 11
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 3819
    const-wide v0, 0x10b00000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3820
    .local v2, "token":J
    iget v4, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mViewId:I

    .line 3821
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 3820
    const-wide v5, 0x10900000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3822
    const-wide v4, 0x10900000002L

    iget-object v6, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3823
    const-wide v4, 0x10500000003L

    iget v6, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3824
    iget v4, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    sparse-switch v4, :sswitch_data_82

    goto :goto_7e

    .line 3826
    :sswitch_31
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    const-wide v4, 0x10b00000004L

    invoke-static {p1, p3, v0, v4, v5}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 3828
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    const-wide v4, 0x10b00000007L

    invoke-static {p1, p3, v0, v4, v5}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 3830
    goto :goto_7e

    .line 3832
    :sswitch_4a
    iget-object v4, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-static {p1, v4, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 3834
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    const-wide v4, 0x10b00000008L

    invoke-static {p1, v0, v4, v5}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 3836
    goto :goto_7e

    .line 3838
    :sswitch_5e
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3839
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3838
    const-wide v4, 0x10500000006L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3840
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3841
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3840
    const-wide v4, 0x10500000009L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3844
    :goto_7e
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3845
    return-void

    :sswitch_data_82
    .sparse-switch
        0x4 -> :sswitch_5e
        0xf -> :sswitch_4a
        0x10 -> :sswitch_31
    .end sparse-switch
.end method
