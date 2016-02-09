.class public final Landroid/telecom/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/DisconnectCause$1;
    }
.end annotation


# static fields
.field public static final BUSY:I = 0x7

.field public static final CANCELED:I = 0x4

.field public static final CONNECTION_MANAGER_NOT_SUPPORTED:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = 0x1

.field public static final LOCAL:I = 0x2

.field public static final MISSED:I = 0x5

.field public static final OTHER:I = 0x9

.field public static final REJECTED:I = 0x6

.field public static final REMOTE:I = 0x3

.field public static final RESTRICTED:I = 0x8

.field public static final UNKNOWN:I


# instance fields
.field private mDisconnectCode:I

.field private mDisconnectDescription:Ljava/lang/CharSequence;

.field private mDisconnectLabel:Ljava/lang/CharSequence;

.field private mDisconnectReason:Ljava/lang/String;

.field private mToneToPlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 177
    new-instance v0, Landroid/telecom/DisconnectCause$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/DisconnectCause$1;-><init>()V

    #@5
    sput-object v0, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 79
    const/4 v5, -0x1

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v3, v2

    #@5
    move-object v4, v2

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    #@9
    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    const/4 v5, -0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    #@9
    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "toneToPlay"    # I

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput p1, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@5
    .line 116
    iput-object p2, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@7
    .line 117
    iput-object p3, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@9
    .line 118
    iput-object p4, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@b
    .line 119
    iput p5, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    #@d
    .line 114
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 89
    const/4 v5, -0x1

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v3, v2

    #@5
    move-object v4, p2

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    #@9
    .line 88
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 219
    instance-of v2, p1, Landroid/telecom/DisconnectCause;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 220
    check-cast v0, Landroid/telecom/DisconnectCause;

    #@8
    .line 221
    .local v0, "d":Landroid/telecom/DisconnectCause;
    iget v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    #@11
    move-result v3

    #@12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 222
    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@1e
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    .line 221
    if-eqz v2, :cond_0

    #@28
    .line 223
    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    .line 221
    if-eqz v2, :cond_0

    #@34
    .line 224
    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@36
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 221
    if-eqz v2, :cond_0

    #@40
    .line 225
    iget v1, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    #@42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTone()I

    #@49
    move-result v2

    #@4a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    .line 221
    :cond_0
    return v1

    #@53
    .line 227
    .end local v0    # "d":Landroid/telecom/DisconnectCause;
    :cond_1
    return v1
.end method

.method public getCode()I
    .locals 1

    #@0
    .prologue
    .line 128
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@2
    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTone()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget v0, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 210
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 211
    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@c
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    .line 210
    add-int/2addr v0, v1

    #@11
    .line 212
    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@13
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    .line 210
    add-int/2addr v0, v1

    #@18
    .line 213
    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@1a
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@1d
    move-result v1

    #@1e
    .line 210
    add-int/2addr v0, v1

    #@1f
    .line 214
    iget v1, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@28
    move-result v1

    #@29
    .line 210
    add-int/2addr v0, v1

    #@2a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 232
    const-string/jumbo v0, ""

    #@3
    .line 233
    .local v0, "code":Ljava/lang/String;
    iget v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@5
    packed-switch v4, :pswitch_data_0

    #@8
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "invalid code: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    iget v5, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 271
    :goto_0
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@20
    if-nez v4, :cond_0

    #@22
    const-string/jumbo v2, ""

    #@25
    .line 272
    .local v2, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@27
    if-nez v4, :cond_1

    #@29
    .line 273
    const-string/jumbo v1, ""

    #@2c
    .line 274
    .local v1, "description":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@2e
    if-nez v4, :cond_2

    #@30
    const-string/jumbo v3, ""

    #@33
    .line 275
    .local v3, "reason":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "DisconnectCause [ Code: ("

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    const-string/jumbo v5, ")"

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 276
    const-string/jumbo v5, " Label: ("

    #@4d
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 276
    const-string/jumbo v5, ")"

    #@58
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 277
    const-string/jumbo v5, " Description: ("

    #@5f
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 277
    const-string/jumbo v5, ")"

    #@6a
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    .line 278
    const-string/jumbo v5, " Reason: ("

    #@71
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    .line 278
    const-string/jumbo v5, ")"

    #@7c
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    .line 279
    const-string/jumbo v5, " Tone: ("

    #@83
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    .line 279
    iget v5, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    #@89
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 279
    const-string/jumbo v5, ") ]"

    #@90
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    return-object v4

    #@99
    .line 235
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@9c
    goto :goto_0

    #@9d
    .line 238
    :pswitch_1
    const-string/jumbo v0, "ERROR"

    #@a0
    goto/16 :goto_0

    #@a2
    .line 241
    :pswitch_2
    const-string/jumbo v0, "LOCAL"

    #@a5
    goto/16 :goto_0

    #@a7
    .line 244
    :pswitch_3
    const-string/jumbo v0, "REMOTE"

    #@aa
    goto/16 :goto_0

    #@ac
    .line 247
    :pswitch_4
    const-string/jumbo v0, "CANCELED"

    #@af
    goto/16 :goto_0

    #@b1
    .line 250
    :pswitch_5
    const-string/jumbo v0, "MISSED"

    #@b4
    goto/16 :goto_0

    #@b6
    .line 253
    :pswitch_6
    const-string/jumbo v0, "REJECTED"

    #@b9
    goto/16 :goto_0

    #@bb
    .line 256
    :pswitch_7
    const-string/jumbo v0, "BUSY"

    #@be
    goto/16 :goto_0

    #@c0
    .line 259
    :pswitch_8
    const-string/jumbo v0, "RESTRICTED"

    #@c3
    goto/16 :goto_0

    #@c5
    .line 262
    :pswitch_9
    const-string/jumbo v0, "OTHER"

    #@c8
    goto/16 :goto_0

    #@ca
    .line 265
    :pswitch_a
    const-string/jumbo v0, "CONNECTION_MANAGER_NOT_SUPPORTED"

    #@cd
    goto/16 :goto_0

    #@cf
    .line 271
    :cond_0
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@d1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d4
    move-result-object v2

    #@d5
    .restart local v2    # "label":Ljava/lang/String;
    goto/16 :goto_1

    #@d7
    .line 273
    :cond_1
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@d9
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@dc
    move-result-object v1

    #@dd
    .restart local v1    # "description":Ljava/lang/String;
    goto/16 :goto_2

    #@df
    .line 274
    :cond_2
    iget-object v3, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@e1
    .restart local v3    # "reason":Ljava/lang/String;
    goto/16 :goto_3

    #@e3
    .line 233
    nop

    #@e4
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 196
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 197
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    #@7
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@a
    .line 198
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    #@c
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@f
    .line 199
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 200
    iget v0, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 195
    return-void
.end method
