.class public Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateInsetsControlChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateInsetsControlChangeItem"


# instance fields
.field private final blacklist mActiveControls:Landroid/view/InsetsSourceControl$Array;

.field private final blacklist mInsetsState:Landroid/view/InsetsState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 110
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 111
    sget-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateInsetsControlChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "insetsState"    # Landroid/view/InsetsState;
    .param p3, "activeControls"    # Landroid/view/InsetsSourceControl$Array;

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Z)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "insetsState"    # Landroid/view/InsetsState;
    .param p3, "activeControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p4, "copyActiveControls"    # Z

    .line 60
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/view/IWindow;)V

    .line 61
    new-instance v0, Landroid/view/InsetsState;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 62
    if-eqz p4, :cond_1a

    .line 63
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    invoke-static {v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->copy(Landroid/view/InsetsSourceControl$Array;)Landroid/view/InsetsSourceControl$Array;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    goto :goto_22

    .line 65
    :cond_1a
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 67
    :goto_22
    return-void
.end method

.method private static blacklist copy(Landroid/view/InsetsSourceControl$Array;)Landroid/view/InsetsSourceControl$Array;
    .registers 3
    .param p0, "controls"    # Landroid/view/InsetsSourceControl$Array;

    .line 71
    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 76
    .local v0, "copiedControls":Landroid/view/InsetsSourceControl$Array;
    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl$Array;->setParcelableFlags(I)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 131
    return v2

    .line 133
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    .line 134
    .local v1, "other":Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;
    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 134
    :goto_25
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 9
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 83
    const-string/jumbo v0, "windowInsetsControlChanged"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 85
    :try_start_8
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-interface {p2, v0, v3}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 93
    goto :goto_1d

    .line 86
    :catch_10
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowStateInsetsControlChangeItem"

    const-string v4, "The original window no longer exists in the new process"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    iget-object v3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl$Array;->release()V

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    const/16 v0, 0x11

    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 143
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStateInsetsControlChangeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method
