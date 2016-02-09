.class public Landroid/app/ActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningAppProcessInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final FLAG_PERSISTENT:I = 0x2

.field public static final IMPORTANCE_BACKGROUND:I = 0x190

.field public static final IMPORTANCE_CANT_SAVE_STATE:I = 0xaa

.field public static final IMPORTANCE_EMPTY:I = 0x1f4

.field public static final IMPORTANCE_FOREGROUND:I = 0x64

.field public static final IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final IMPORTANCE_GONE:I = 0x3e8

.field public static final IMPORTANCE_PERCEPTIBLE:I = 0x82

.field public static final IMPORTANCE_SERVICE:I = 0x12c

.field public static final IMPORTANCE_TOP_SLEEPING:I = 0x96

.field public static final IMPORTANCE_VISIBLE:I = 0xc8

.field public static final REASON_PROVIDER_IN_USE:I = 0x1

.field public static final REASON_SERVICE_IN_USE:I = 0x2

.field public static final REASON_UNKNOWN:I


# instance fields
.field public flags:I

.field public importance:I

.field public importanceReasonCode:I

.field public importanceReasonComponent:Landroid/content/ComponentName;

.field public importanceReasonImportance:I

.field public importanceReasonPid:I

.field public lastTrimLevel:I

.field public lru:I

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public processState:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2269
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    #@5
    .line 2268
    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1991
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2221
    const/16 v0, 0x64

    #@5
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    #@7
    .line 2222
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    #@a
    .line 2223
    const/4 v0, 0x6

    #@b
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    #@d
    .line 2220
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2279
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 2278
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "pProcessName"    # Ljava/lang/String;
    .param p2, "pPid"    # I
    .param p3, "pArr"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2227
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    #@5
    .line 2228
    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    #@7
    .line 2229
    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@9
    .line 2226
    return-void
.end method

.method public static procStateToImportance(I)I
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 2124
    const/4 v0, -0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 2125
    const/16 v0, 0x3e8

    #@5
    return v0

    #@6
    .line 2126
    :cond_0
    const/16 v0, 0xc

    #@8
    if-lt p0, v0, :cond_1

    #@a
    .line 2127
    const/16 v0, 0x190

    #@c
    return v0

    #@d
    .line 2128
    :cond_1
    const/16 v0, 0xa

    #@f
    if-lt p0, v0, :cond_2

    #@11
    .line 2129
    const/16 v0, 0x12c

    #@13
    return v0

    #@14
    .line 2130
    :cond_2
    const/16 v0, 0x9

    #@16
    if-le p0, v0, :cond_3

    #@18
    .line 2131
    const/16 v0, 0xaa

    #@1a
    return v0

    #@1b
    .line 2132
    :cond_3
    const/4 v0, 0x7

    #@1c
    if-lt p0, v0, :cond_4

    #@1e
    .line 2133
    const/16 v0, 0x82

    #@20
    return v0

    #@21
    .line 2134
    :cond_4
    const/4 v0, 0x6

    #@22
    if-lt p0, v0, :cond_5

    #@24
    .line 2135
    const/16 v0, 0xc8

    #@26
    return v0

    #@27
    .line 2136
    :cond_5
    const/4 v0, 0x5

    #@28
    if-lt p0, v0, :cond_6

    #@2a
    .line 2137
    const/16 v0, 0x96

    #@2c
    return v0

    #@2d
    .line 2138
    :cond_6
    const/4 v0, 0x4

    #@2e
    if-lt p0, v0, :cond_7

    #@30
    .line 2139
    const/16 v0, 0x7d

    #@32
    return v0

    #@33
    .line 2141
    :cond_7
    const/16 v0, 0x64

    #@35
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 2233
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    #@6
    .line 2254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    #@c
    .line 2255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    #@12
    .line 2256
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@18
    .line 2257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    #@1e
    .line 2258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    #@24
    .line 2259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    #@2a
    .line 2260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    #@30
    .line 2261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    #@36
    .line 2262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    #@3c
    .line 2263
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    #@42
    .line 2264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    #@48
    .line 2265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    #@4e
    .line 2252
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2237
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 2238
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 2239
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 2240
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 2241
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 2242
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2243
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 2244
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 2245
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 2246
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 2247
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    #@34
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@37
    .line 2248
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 2249
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 2236
    return-void
.end method
