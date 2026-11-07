.class public final Landroid/view/contentcapture/ContentCaptureContext;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureContext$Builder;,
        Landroid/view/contentcapture/ContentCaptureContext$ContextCreationFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DISABLED_BY_APP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_DISABLED_BY_FLAG_SECURE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_DISABLED_FLUSH_FOR_VIEW_TREE_APPEARING:I = 0x8

.field public static final whitelist FLAG_RECONNECTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDisplayId:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFlags:I

.field private final blacklist mHasClientContext:Z

.field private final blacklist mId:Landroid/content/LocusId;

.field private blacklist mParentSessionId:I

.field private final blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 420
    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureContext$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 144
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 145
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmId(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/content/LocusId;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    .line 148
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    .line 150
    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 151
    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    .line 152
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;I)V
    .registers 4
    .param p1, "original"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "extraFlags"    # I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 156
    iget-boolean v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 157
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 158
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    .line 159
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    .line 160
    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    .line 161
    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    .line 162
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 163
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V
    .registers 8
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "activityId"    # Landroid/app/assist/ActivityId;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "displayId"    # I
    .param p5, "windowToken"    # Landroid/os/IBinder;
    .param p6, "flags"    # I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 126
    if-eqz p1, :cond_14

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 128
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 129
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    goto :goto_1b

    .line 131
    :cond_14
    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 133
    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    .line 135
    :goto_1b
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    .line 136
    iput p6, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    .line 137
    iput p4, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    .line 138
    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 139
    iput-object p5, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    .line 140
    return-void
.end method

.method public static whitelist forLocusId(Ljava/lang/String;)Landroid/view/contentcapture/ContentCaptureContext;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 278
    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fromServer()Z
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 351
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    .line 352
    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    :cond_12
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    if-eqz v0, :cond_20

    .line 355
    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, p1}, Landroid/content/LocusId;->dump(Ljava/io/PrintWriter;)V

    .line 357
    :cond_20
    const-string v0, ", activityId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 358
    const-string v0, ", displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 359
    const-string v0, ", windowToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 360
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v0, :cond_4c

    .line 361
    const-string v0, ", parentId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 363
    :cond_4c
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    if-lez v0, :cond_5a

    .line 364
    const-string v0, ", flags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 366
    :cond_5a
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_63

    .line 368
    const-string v0, ", hasExtras"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    :cond_63
    return-void
.end method

.method public whitelist getActivityComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getActivityId()Landroid/app/assist/ActivityId;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 213
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    :goto_8
    return-object v0
.end method

.method public whitelist getDisplayId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 242
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFlags()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 270
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    return v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist getParentSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 225
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    .line 226
    :cond_6
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    .line 225
    :goto_d
    return-object v0
.end method

.method public whitelist getTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 191
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getWindowToken()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist setParentSessionId(I)V
    .registers 2
    .param p1, "parentSessionId"    # I

    .line 231
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 381
    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string v2, ", activityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    const-string v2, ", windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 387
    :cond_4d
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_61

    .line 390
    const-string v1, ", hasExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_61
    :goto_61
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v1, :cond_70

    .line 394
    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    :cond_70
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 406
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_13

    .line 408
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 409
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 411
    :cond_13
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 413
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 415
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    :cond_32
    return-void
.end method
