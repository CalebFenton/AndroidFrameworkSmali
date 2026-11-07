.class final Landroid/widget/RemoteViews$ReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectionAction"
.end annotation


# instance fields
.field greylist mValue:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;ILjava/lang/Object;)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .line 2851
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 2852
    iput-object p4, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2853
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2856
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 2859
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    packed-switch v0, :pswitch_data_d4

    goto/16 :goto_d2

    .line 2920
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2921
    goto/16 :goto_d2

    .line 2917
    :pswitch_16
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2918
    goto/16 :goto_d2

    .line 2914
    :pswitch_20
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2915
    goto/16 :goto_d2

    .line 2911
    :pswitch_2a
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2912
    goto/16 :goto_d2

    .line 2902
    :pswitch_34
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2903
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    goto/16 :goto_d2

    .line 2905
    :cond_42
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 2906
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2907
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 2909
    goto/16 :goto_d2

    .line 2894
    :pswitch_55
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2895
    goto/16 :goto_d2

    .line 2891
    :pswitch_5f
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2892
    goto :goto_d2

    .line 2888
    :pswitch_68
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2889
    goto :goto_d2

    .line 2885
    :pswitch_71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2886
    goto :goto_d2

    .line 2882
    :pswitch_78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2883
    goto :goto_d2

    .line 2879
    :pswitch_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2880
    goto :goto_d2

    .line 2876
    :pswitch_8f
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2877
    goto :goto_d2

    .line 2873
    :pswitch_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2874
    goto :goto_d2

    .line 2870
    :pswitch_a5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2871
    goto :goto_d2

    .line 2867
    :pswitch_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2868
    goto :goto_d2

    .line 2864
    :pswitch_bc
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2865
    goto :goto_d2

    .line 2861
    :pswitch_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2862
    nop

    .line 2925
    :goto_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_bc
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_78
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_55
        :pswitch_34
        :pswitch_2a
        :pswitch_20
        :pswitch_16
        :pswitch_a
    .end packed-switch
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

    .line 3081
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3083
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 3084
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16d

    .line 3085
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_180

    .line 3165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3166
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3165
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3160
    :pswitch_39
    nop

    .line 3161
    const-wide v3, 0x10500000012L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v5

    .line 3160
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3163
    goto :goto_e

    .line 3155
    :pswitch_4b
    nop

    .line 3156
    const-wide v3, 0x10b00000011L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v5

    .line 3155
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3158
    goto :goto_e

    .line 3150
    :pswitch_59
    nop

    .line 3151
    const-wide v3, 0x10b00000010L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 3150
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3153
    goto :goto_e

    .line 3144
    :pswitch_67
    const-wide v3, 0x10c0000000fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v5

    .line 3146
    .local v5, "bitmapData":[B
    array-length v6, v5

    .line 3147
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3146
    invoke-virtual {v0, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3148
    goto :goto_e

    .line 3140
    .end local v5    # "bitmapData":[B
    :pswitch_7a
    nop

    .line 3141
    const-wide v3, 0x1090000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3140
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3142
    goto :goto_e

    .line 3135
    :pswitch_88
    nop

    .line 3136
    const-wide v3, 0x10b0000000dL

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3135
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3138
    goto/16 :goto_e

    .line 3131
    :pswitch_97
    nop

    .line 3132
    const-wide v3, 0x1090000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3131
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3133
    goto/16 :goto_e

    .line 3127
    :pswitch_a6
    nop

    .line 3128
    const-wide v3, 0x1050000000bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 3127
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3129
    goto/16 :goto_e

    .line 3123
    :pswitch_ba
    nop

    .line 3124
    const-wide v3, 0x1010000000aL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 3123
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3125
    goto/16 :goto_e

    .line 3119
    :pswitch_cd
    nop

    .line 3120
    const-wide v3, 0x10200000009L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3119
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3121
    goto/16 :goto_e

    .line 3115
    :pswitch_e0
    nop

    .line 3116
    const-wide v3, 0x10300000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3115
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3117
    goto/16 :goto_e

    .line 3111
    :pswitch_f3
    nop

    .line 3112
    const-wide v3, 0x10500000007L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3111
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3113
    goto/16 :goto_e

    .line 3107
    :pswitch_106
    nop

    .line 3108
    const-wide v3, 0x10500000006L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    int-to-short v5, v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 3107
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3109
    goto/16 :goto_e

    .line 3103
    :pswitch_11a
    nop

    .line 3104
    const-wide v3, 0x10c00000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v5

    .line 3103
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3105
    goto/16 :goto_e

    .line 3099
    :pswitch_129
    nop

    .line 3100
    const-wide v3, 0x10800000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3099
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3101
    goto/16 :goto_e

    .line 3095
    :pswitch_13c
    nop

    .line 3096
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3095
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3097
    goto/16 :goto_e

    .line 3091
    :pswitch_14f
    nop

    .line 3092
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3091
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3093
    goto/16 :goto_e

    .line 3087
    :pswitch_15e
    nop

    .line 3088
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3087
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3089
    goto/16 :goto_e

    .line 3169
    :cond_16d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3171
    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_1a8

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3175
    new-instance v3, Landroid/widget/RemoteViews$ReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$ReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_15e
        :pswitch_14f
        :pswitch_13c
        :pswitch_129
        :pswitch_11a
        :pswitch_106
        :pswitch_f3
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_a6
        :pswitch_97
        :pswitch_88
        :pswitch_7a
        :pswitch_67
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_1a8
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000003L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 12
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

    .line 3176
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 3178
    .local v0, "viewId":I
    const/4 v1, 0x0

    .line 3179
    .local v1, "value":Ljava/lang/Object;
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3181
    .local v2, "parameterType":I
    const/4 v3, 0x0

    .line 3195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3181
    packed-switch v2, :pswitch_data_14e

    .line 3245
    :pswitch_21
    const/4 v3, 0x0

    return-object v3

    .line 3229
    :pswitch_23
    const-wide v3, 0x10500000012L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/graphics/BlendMode;

    .line 3231
    goto/16 :goto_13c

    .line 3237
    :pswitch_31
    const-wide v3, 0x10b00000011L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$PendingResources;

    .line 3238
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v1

    .line 3240
    goto/16 :goto_13c

    .line 3233
    :pswitch_42
    const-wide v3, 0x10b00000010L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 3235
    goto/16 :goto_13c

    .line 3226
    :pswitch_50
    const-wide v3, 0x10c0000000fL

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/graphics/Bitmap;

    .line 3227
    goto/16 :goto_13c

    .line 3222
    :pswitch_5e
    nop

    .line 3223
    const-wide v3, 0x1090000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3222
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3224
    goto/16 :goto_13c

    .line 3218
    :pswitch_70
    const-wide v3, 0x10b0000000dL

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    .line 3220
    goto/16 :goto_13c

    .line 3215
    :pswitch_7e
    const-wide v3, 0x1090000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 3216
    goto/16 :goto_13c

    .line 3212
    :pswitch_8c
    const-wide v5, 0x1050000000bL

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 3213
    goto/16 :goto_13c

    .line 3208
    :pswitch_a1
    nop

    .line 3209
    nop

    .line 3208
    const-wide v5, 0x1010000000aL

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 3210
    goto/16 :goto_13c

    .line 3204
    :pswitch_b8
    nop

    .line 3205
    nop

    .line 3204
    const-wide v5, 0x10200000009L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3206
    goto :goto_13c

    .line 3201
    :pswitch_ce
    const-wide v5, 0x10300000008L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3202
    goto :goto_13c

    .line 3198
    :pswitch_e2
    const-wide v5, 0x10500000007L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3199
    goto :goto_13c

    .line 3194
    :pswitch_f6
    nop

    .line 3195
    nop

    .line 3194
    const-wide v5, 0x10500000006L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 3196
    goto :goto_13c

    .line 3187
    :pswitch_10c
    const-wide v4, 0x10c00000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 3189
    .local v4, "bytes":[B
    if-eqz v4, :cond_13c

    array-length v5, v4

    if-lez v5, :cond_13c

    .line 3190
    aget-byte v3, v4, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_13c

    .line 3183
    .end local v4    # "bytes":[B
    :pswitch_123
    nop

    .line 3184
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3183
    const-wide v4, 0x10800000004L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3185
    nop

    .line 3247
    :cond_13c
    :goto_13c
    new-instance v3, Landroid/widget/RemoteViews$ReflectionAction;

    .line 3248
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v2, v1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    .line 3247
    return-object v3

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_123
        :pswitch_10c
        :pswitch_f6
        :pswitch_e2
        :pswitch_ce
        :pswitch_b8
        :pswitch_a1
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_5e
        :pswitch_50
        :pswitch_21
        :pswitch_21
        :pswitch_42
        :pswitch_31
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 2993
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2988
    const/4 v0, 0x2

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2983
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2928
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2931
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_99

    .line 2966
    :pswitch_a
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2967
    goto/16 :goto_99

    .line 2963
    :pswitch_17
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2964
    goto/16 :goto_99

    .line 2973
    :pswitch_20
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2974
    goto/16 :goto_99

    .line 2960
    :pswitch_29
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2961
    goto :goto_99

    .line 2957
    :pswitch_31
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2958
    goto :goto_99

    .line 2954
    :pswitch_39
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2955
    goto :goto_99

    .line 2951
    :pswitch_45
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2952
    goto :goto_99

    .line 2948
    :pswitch_51
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2949
    goto :goto_99

    .line 2945
    :pswitch_5d
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2946
    goto :goto_99

    .line 2942
    :pswitch_69
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2943
    goto :goto_99

    .line 2939
    :pswitch_75
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2940
    goto :goto_99

    .line 2936
    :pswitch_81
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2937
    goto :goto_99

    .line 2933
    :pswitch_8d
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2934
    nop

    .line 2978
    :goto_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_31
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_17
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 2998
    const-wide v0, 0x10b00000006L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2999
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mViewId:I

    .line 3000
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2999
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3001
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3002
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3003
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_147

    .line 3004
    iget v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    packed-switch v2, :pswitch_data_14c

    :pswitch_34
    goto/16 :goto_147

    .line 3059
    :pswitch_36
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BlendMode;

    .line 3060
    invoke-static {v2}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v2

    .line 3059
    const-wide v3, 0x10500000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3061
    goto/16 :goto_147

    .line 3067
    :pswitch_48
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Icon;

    const-wide v3, 0x10b00000011L

    invoke-static {p1, p3, v2, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 3069
    goto/16 :goto_147

    .line 3063
    :pswitch_56
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    const-wide v3, 0x10b00000010L

    invoke-static {p1, v2, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 3065
    goto/16 :goto_147

    .line 3052
    :pswitch_64
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3053
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3055
    nop

    .line 3056
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 3055
    const-wide v4, 0x10c0000000fL

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3057
    goto/16 :goto_147

    .line 3048
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :pswitch_83
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    .line 3049
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3048
    const-wide v3, 0x1090000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3050
    goto/16 :goto_147

    .line 3041
    :pswitch_95
    const-wide v2, 0x10b0000000dL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3043
    .local v2, "csToken":J
    iget-object v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Landroid/widget/RemoteViewsSerializers;->writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V

    .line 3045
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3046
    goto/16 :goto_147

    .line 3037
    .end local v2    # "csToken":J
    :pswitch_aa
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x1090000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3039
    goto/16 :goto_147

    .line 3033
    :pswitch_b8
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    .line 3034
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 3033
    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3035
    goto/16 :goto_147

    .line 3029
    :pswitch_ca
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    .line 3030
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 3029
    const-wide v4, 0x1010000000aL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 3031
    goto :goto_147

    .line 3025
    :pswitch_db
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 3026
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3025
    const-wide v3, 0x10200000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3027
    goto :goto_147

    .line 3022
    :pswitch_ec
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x10300000008L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3023
    goto :goto_147

    .line 3019
    :pswitch_fd
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3020
    goto :goto_147

    .line 3015
    :pswitch_10e
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Short;

    .line 3016
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 3015
    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3017
    goto :goto_147

    .line 3011
    :pswitch_11f
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Byte;

    .line 3012
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    .line 3011
    const-wide v4, 0x10c00000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3013
    goto :goto_147

    .line 3007
    :pswitch_136
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 3008
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3007
    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3009
    nop

    .line 3076
    :cond_147
    :goto_147
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3077
    return-void

    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_136
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_ec
        :pswitch_db
        :pswitch_ca
        :pswitch_b8
        :pswitch_aa
        :pswitch_95
        :pswitch_83
        :pswitch_64
        :pswitch_34
        :pswitch_34
        :pswitch_56
        :pswitch_48
        :pswitch_36
    .end packed-switch
.end method
