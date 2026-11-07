.class public final Landroid/service/controls/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/Control$StatefulBuilder;,
        Landroid/service/controls/Control$StatelessBuilder;,
        Landroid/service/controls/Control$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NUM_STATUS:I = 0x5

.field public static final whitelist STATUS_DISABLED:I = 0x4

.field public static final whitelist STATUS_ERROR:I = 0x3

.field public static final whitelist STATUS_NOT_FOUND:I = 0x2

.field public static final whitelist STATUS_OK:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Control"


# instance fields
.field private final blacklist mAppIntent:Landroid/app/PendingIntent;

.field private final blacklist mAuthRequired:Z

.field private final blacklist mControlId:Ljava/lang/String;

.field private final blacklist mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private final blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private final blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceType:I

.field private final blacklist mStatus:I

.field private final blacklist mStatusText:Ljava/lang/CharSequence;

.field private final blacklist mStructure:Ljava/lang/CharSequence;

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthRequired(Landroid/service/controls/Control;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlTemplate(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I
    .registers 1

    iget p0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/service/controls/Control;)I
    .registers 1

    iget p0, p0, Landroid/service/controls/Control;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusText(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 395
    new-instance v0, Landroid/service/controls/Control$1;

    invoke-direct {v0}, Landroid/service/controls/Control$1;-><init>()V

    sput-object v0, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    goto :goto_2c

    .line 202
    :cond_2a
    iput-object v1, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    .line 204
    :goto_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_39

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    goto :goto_3b

    .line 207
    :cond_39
    iput-object v1, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    .line 209
    :goto_3b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_56

    .line 212
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    goto :goto_58

    .line 214
    :cond_56
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 217
    :goto_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_69

    .line 218
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    goto :goto_6b

    .line 220
    :cond_69
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 223
    :goto_6b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    .line 224
    sget-object v0, Landroid/service/controls/templates/ControlTemplateWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    .line 225
    .local v0, "wrapper":Landroid/service/controls/templates/ControlTemplateWrapper;
    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplateWrapper;->getWrappedTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    .line 228
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V
    .registers 24
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "subtitle"    # Ljava/lang/CharSequence;
    .param p5, "structure"    # Ljava/lang/CharSequence;
    .param p6, "zone"    # Ljava/lang/CharSequence;
    .param p7, "appIntent"    # Landroid/app/PendingIntent;
    .param p8, "customIcon"    # Landroid/graphics/drawable/Icon;
    .param p9, "customColor"    # Landroid/content/res/ColorStateList;
    .param p10, "status"    # I
    .param p11, "controlTemplate"    # Landroid/service/controls/templates/ControlTemplate;
    .param p12, "statusText"    # Ljava/lang/CharSequence;
    .param p13, "authRequired"    # Z

    .line 156
    move/from16 v0, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static/range {p11 .. p11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static/range {p12 .. p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    .line 164
    invoke-static {p2}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Control"

    if-nez v1, :cond_3b

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid device type:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput v2, p0, Landroid/service/controls/Control;->mDeviceType:I

    goto :goto_3d

    .line 168
    :cond_3b
    iput p2, p0, Landroid/service/controls/Control;->mDeviceType:I

    .line 170
    :goto_3d
    iput-object p3, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    .line 171
    iput-object p4, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    .line 172
    iput-object p5, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    .line 173
    move-object/from16 v5, p6

    iput-object v5, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    .line 174
    move-object/from16 v6, p7

    iput-object v6, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    .line 176
    move-object/from16 v7, p9

    iput-object v7, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 177
    move-object/from16 v8, p8

    iput-object v8, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 179
    if-ltz v0, :cond_5c

    const/4 v9, 0x5

    if-lt v0, v9, :cond_59

    goto :goto_5c

    .line 183
    :cond_59
    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    goto :goto_74

    .line 180
    :cond_5c
    :goto_5c
    iput v2, p0, Landroid/service/controls/Control;->mStatus:I

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Status unknown:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_74
    move-object/from16 v2, p11

    iput-object v2, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 186
    move-object/from16 v3, p12

    iput-object v3, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    .line 187
    move/from16 v9, p13

    iput-boolean v9, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getControlId()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public whitelist getCustomColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getCustomIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 245
    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    return v0
.end method

.method public whitelist getStatusText()Ljava/lang/CharSequence;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getStructure()Ljava/lang/CharSequence;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getZone()Ljava/lang/CharSequence;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isAuthRequired()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 359
    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 364
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 365
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 367
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 369
    :goto_26
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    .line 370
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 371
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 373
    :cond_33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 375
    :goto_36
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 376
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_48

    .line 377
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 378
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b

    .line 380
    :cond_48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 382
    :goto_4b
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_58

    .line 383
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5b

    .line 386
    :cond_58
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 389
    :goto_5b
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    iget-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplateWrapper;-><init>(Landroid/service/controls/templates/ControlTemplate;)V

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/templates/ControlTemplateWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 391
    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 392
    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    return-void
.end method
