.class public final Landroid/app/smartspace/SmartspaceTargetEvent;
.super Ljava/lang/Object;
.source "SmartspaceTargetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceTargetEvent$Builder;,
        Landroid/app/smartspace/SmartspaceTargetEvent$EventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceTargetEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_TARGET_BLOCK:I = 0x5

.field public static final whitelist EVENT_TARGET_DISMISS:I = 0x4

.field public static final whitelist EVENT_TARGET_HIDDEN:I = 0x3

.field public static final whitelist EVENT_TARGET_INTERACTION:I = 0x1

.field public static final whitelist EVENT_TARGET_SHOWN:I = 0x2

.field public static final whitelist EVENT_UI_SURFACE_HIDDEN:I = 0x7

.field public static final whitelist EVENT_UI_SURFACE_SHOWN:I = 0x6


# instance fields
.field private final blacklist mEventType:I

.field private final blacklist mSmartspaceActionId:Ljava/lang/String;

.field private final blacklist mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;I)V
    .registers 4
    .param p1, "smartspaceTarget"    # Landroid/app/smartspace/SmartspaceTarget;
    .param p2, "smartspaceActionId"    # Ljava/lang/String;
    .param p3, "eventType"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 94
    iput-object p2, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    .line 95
    iput p3, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;ILandroid/app/smartspace/SmartspaceTargetEvent-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/SmartspaceTargetEvent;-><init>(Landroid/app/smartspace/SmartspaceTarget;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    const-class v1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceTargetEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    return v0
.end method

.method public whitelist getSmartspaceActionId()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartspaceTarget()Landroid/app/smartspace/SmartspaceTarget;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceTargetEvent{mSmartspaceTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmartspaceActionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mSmartspaceActionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Landroid/app/smartspace/SmartspaceTargetEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
