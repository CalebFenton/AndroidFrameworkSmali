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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SecurityLog$SecurityEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEvent:Landroid/util/EventLog$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 165
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent$1;

    #@2
    invoke-direct {v0}, Landroid/app/admin/SecurityLog$SecurityEvent$1;-><init>()V

    #@5
    .line 164
    sput-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 119
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    invoke-static {p1}, Landroid/util/EventLog$Event;->fromBytes([B)Landroid/util/EventLog$Event;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    #@9
    .line 123
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    #@2
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTag()I
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    #@2
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    #@2
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    #@2
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getBytes()[B

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@9
    .line 160
    return-void
.end method
