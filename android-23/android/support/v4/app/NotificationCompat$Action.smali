.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/NotificationCompatBase$Action;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$Action$Builder;,
        Landroid/support/v4/app/NotificationCompat$Action$Extender;,
        Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;,
        Landroid/support/v4/app/NotificationCompat$Action$1;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2171
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    #@7
    .line 1808
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1827
    new-instance v4, Landroid/os/Bundle;

    #@2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V

    #@d
    .line 1826
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;

    #@0
    .prologue
    .line 1830
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;-><init>()V

    #@3
    .line 1832
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    #@5
    .line 1833
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@b
    .line 1834
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@d
    .line 1835
    if-eqz p4, :cond_0

    #@f
    .end local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    #@11
    .line 1836
    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    #@13
    .line 1831
    return-void

    #@14
    .line 1835
    .restart local p4    # "extras":Landroid/os/Bundle;
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    #@16
    .end local p4    # "extras":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    #@19
    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V

    #@3
    return-void
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 1851
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1859
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon()I
    .locals 1

    #@0
    .prologue
    .line 1841
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    #@2
    return v0
.end method

.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 1868
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public bridge synthetic getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 1867
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1846
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method
