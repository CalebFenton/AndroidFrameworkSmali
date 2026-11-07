.class public final Landroid/view/autofill/AutofillValue;
.super Ljava/lang/Object;
.source "AutofillValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AutofillValue"


# instance fields
.field private final greylist-max-o mType:I

.field private final greylist-max-o mValue:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 244
    new-instance v0, Landroid/view/autofill/AutofillValue$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillValue$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    .line 55
    iput-object p2, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    .line 225
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    packed-switch v0, :pswitch_data_5e

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 238
    goto :goto_5d

    .line 234
    :pswitch_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 235
    goto :goto_5d

    .line 230
    :pswitch_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .local v0, "rawValue":I
    if-eqz v0, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 232
    goto :goto_5d

    .line 227
    .end local v0    # "rawValue":I
    :pswitch_56
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 228
    nop

    .line 242
    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_56
        :pswitch_46
        :pswitch_3b
        :pswitch_30
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist forDate(J)Landroid/view/autofill/AutofillValue;
    .registers 5
    .param p0, "value"    # J

    .line 304
    new-instance v0, Landroid/view/autofill/AutofillValue;

    const/4 v1, 0x4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist forList(I)Landroid/view/autofill/AutofillValue;
    .registers 4
    .param p0, "value"    # I

    .line 295
    new-instance v0, Landroid/view/autofill/AutofillValue;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;
    .registers 4
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 270
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forText() not called on main thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillValue"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2a
    if-nez p0, :cond_2e

    const/4 v0, 0x0

    goto :goto_38

    :cond_2e
    new-instance v0, Landroid/view/autofill/AutofillValue;

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    .line 274
    :goto_38
    return-object v0
.end method

.method public static whitelist forToggle(Z)Landroid/view/autofill/AutofillValue;
    .registers 4
    .param p0, "value"    # Z

    .line 285
    new-instance v0, Landroid/view/autofill/AutofillValue;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 164
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 165
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 166
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 167
    :cond_13
    move-object v1, p1

    check-cast v1, Landroid/view/autofill/AutofillValue;

    .line 169
    .local v1, "other":Landroid/view/autofill/AutofillValue;
    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    iget v3, v1, Landroid/view/autofill/AutofillValue;->mType:I

    if-eq v2, v3, :cond_1d

    return v0

    .line 171
    :cond_1d
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 172
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 174
    :cond_34
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    iget-object v2, v1, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getDateValue()J
    .registers 4

    .line 129
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    iget v1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "value must be a date value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getListValue()I
    .registers 4

    .line 108
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    iget v1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "value must be a list value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getTextValue()Ljava/lang/CharSequence;
    .registers 4

    .line 66
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    iget v1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "value must be a text value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getToggleValue()Z
    .registers 4

    .line 87
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v0

    iget v1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "value must be a toggle value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 159
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    iget-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist isDate()Z
    .registers 3

    .line 139
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 2

    .line 150
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist isList()Z
    .registers 3

    .line 118
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isText()Z
    .registers 3

    .line 76
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist isToggle()Z
    .registers 3

    .line 97
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 180
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v1, "[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    .local v0, "string":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 186
    iget-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 188
    :cond_2e
    iget-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    :goto_33
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    .line 217
    :pswitch_b
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_37

    .line 214
    :pswitch_17
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_37

    .line 211
    :pswitch_23
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto :goto_37

    .line 208
    :pswitch_2f
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 209
    nop

    .line 220
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_23
        :pswitch_17
        :pswitch_b
    .end packed-switch
.end method
