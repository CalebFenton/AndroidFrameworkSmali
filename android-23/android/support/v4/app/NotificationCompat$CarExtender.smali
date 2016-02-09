.class public final Landroid/support/v4/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final TAG:Ljava/lang/String; = "CarExtender"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2950
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@6
    .line 2955
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 5
    .param p1, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2950
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@6
    .line 2964
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v3, 0x15

    #@a
    if-ge v2, v3, :cond_0

    #@c
    .line 2965
    return-void

    #@d
    .line 2968
    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@10
    move-result-object v2

    #@11
    if-nez v2, :cond_2

    #@13
    .line 2969
    const/4 v1, 0x0

    #@14
    .line 2970
    :goto_0
    if-eqz v1, :cond_1

    #@16
    .line 2971
    const-string/jumbo v2, "large_icon"

    #@19
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/graphics/Bitmap;

    #@1f
    iput-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@21
    .line 2972
    const-string/jumbo v2, "app_color"

    #@24
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@27
    move-result v2

    #@28
    iput v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@2a
    .line 2974
    const-string/jumbo v2, "car_conversation"

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@30
    move-result-object v0

    #@31
    .line 2975
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->-get0()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    #@34
    move-result-object v2

    #@35
    .line 2976
    sget-object v3, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;

    #@37
    sget-object v4, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@39
    .line 2975
    invoke-interface {v2, v0, v3, v4}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@3f
    iput-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@41
    .line 2963
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    return-void

    #@42
    .line 2969
    :cond_2
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v3, "android.car.EXTENSIONS"

    #@49
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@4c
    move-result-object v1

    #@4d
    .local v1, "carBundle":Landroid/os/Bundle;
    goto :goto_0
.end method


# virtual methods
.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    #@0
    .prologue
    .line 2987
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v3, 0x15

    #@4
    if-ge v2, v3, :cond_0

    #@6
    .line 2988
    return-object p1

    #@7
    .line 2991
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    #@9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@c
    .line 2993
    .local v1, "carExtensions":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 2994
    const-string/jumbo v2, "large_icon"

    #@13
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@18
    .line 2996
    :cond_1
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 2997
    const-string/jumbo v2, "app_color"

    #@1f
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@21
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@24
    .line 3000
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 3001
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->-get0()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@2e
    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;

    #@31
    move-result-object v0

    #@32
    .line 3002
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "car_conversation"

    #@35
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@38
    .line 3005
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, "android.car.EXTENSIONS"

    #@3f
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@42
    .line 3006
    return-object p1
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    #@0
    .prologue
    .line 3029
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@2
    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 3053
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getUnreadConversation()Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 1

    #@0
    .prologue
    .line 3072
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@2
    return-object v0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 3018
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    #@2
    .line 3019
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 3042
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    .line 3043
    return-object p0
.end method

.method public setUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "unreadConversation"    # Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@0
    .prologue
    .line 3063
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    #@2
    .line 3064
    return-object p0
.end method
