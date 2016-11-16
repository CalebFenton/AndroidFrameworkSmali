.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OpEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mMode:I

.field private final mOp:I

.field private final mProxyPackageName:Ljava/lang/String;

.field private final mProxyUid:I

.field private final mRejectTime:J

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1235
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    #@2
    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1157
    return-void
.end method

.method public constructor <init>(IIJJIILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .param p3, "time"    # J
    .param p5, "rejectTime"    # J
    .param p7, "duration"    # I
    .param p8, "proxyUid"    # I
    .param p9, "proxyPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1168
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    #@5
    .line 1169
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    #@7
    .line 1170
    iput-wide p3, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    #@9
    .line 1171
    iput-wide p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    #@b
    .line 1172
    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    #@d
    .line 1173
    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    #@f
    .line 1174
    iput-object p9, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    #@11
    .line 1167
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    #@9
    .line 1227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    #@f
    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    #@15
    .line 1229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    #@1b
    .line 1230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    #@21
    .line 1231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    #@27
    .line 1232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    #@2d
    .line 1225
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1211
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDuration()I
    .locals 4

    #@0
    .prologue
    .line 1198
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    iget-wide v2, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    #@b
    sub-long/2addr v0, v2

    #@c
    long-to-int v0, v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    #@10
    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 1182
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    #@2
    return v0
.end method

.method public getOp()I
    .locals 1

    #@0
    .prologue
    .line 1178
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    #@2
    return v0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1206
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProxyUid()I
    .locals 1

    #@0
    .prologue
    .line 1202
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    #@2
    return v0
.end method

.method public getRejectTime()J
    .locals 2

    #@0
    .prologue
    .line 1190
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    #@2
    return-wide v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 1186
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    #@2
    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    #@0
    .prologue
    .line 1194
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1216
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1217
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1218
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 1219
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1220
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1221
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1222
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1215
    return-void
.end method
