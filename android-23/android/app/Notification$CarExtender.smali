.class public final Landroid/app/Notification$CarExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$CarExtender$UnreadConversation;,
        Landroid/app/Notification$CarExtender$Builder;
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

.field private mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 5307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5302
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@6
    .line 5307
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 5
    .param p1, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 5302
    iput v4, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@6
    .line 5316
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 5317
    const/4 v1, 0x0

    #@b
    .line 5318
    :goto_0
    if-eqz v1, :cond_0

    #@d
    .line 5319
    const-string/jumbo v2, "large_icon"

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/graphics/Bitmap;

    #@16
    iput-object v2, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@18
    .line 5320
    const-string/jumbo v2, "app_color"

    #@1b
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1e
    move-result v2

    #@1f
    iput v2, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@21
    .line 5322
    const-string/jumbo v2, "car_conversation"

    #@24
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@27
    move-result-object v0

    #@28
    .line 5323
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/app/Notification$CarExtender$UnreadConversation;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    #@2e
    .line 5315
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void

    #@2f
    .line 5317
    :cond_1
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@31
    const-string/jumbo v3, "android.car.EXTENSIONS"

    #@34
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@37
    move-result-object v1

    #@38
    .local v1, "carBundle":Landroid/os/Bundle;
    goto :goto_0
.end method


# virtual methods
.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 5334
    new-instance v1, Landroid/os/Bundle;

    #@2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 5336
    .local v1, "carExtensions":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 5337
    const-string/jumbo v2, "large_icon"

    #@c
    iget-object v3, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    .line 5339
    :cond_0
    iget v2, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 5340
    const-string/jumbo v2, "app_color"

    #@18
    iget v3, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@1a
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 5343
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 5344
    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    #@23
    invoke-virtual {v2}, Landroid/app/Notification$CarExtender$UnreadConversation;->getBundleForUnreadConversation()Landroid/os/Bundle;

    #@26
    move-result-object v0

    #@27
    .line 5345
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "car_conversation"

    #@2a
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2d
    .line 5348
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, "android.car.EXTENSIONS"

    #@34
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@37
    .line 5349
    return-object p1
.end method

.method public getColor()I
    .locals 1

    #@0
    .prologue
    .line 5372
    iget v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@2
    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 5396
    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getUnreadConversation()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 1

    #@0
    .prologue
    .line 5415
    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    #@2
    return-object v0
.end method

.method public setColor(I)Landroid/app/Notification$CarExtender;
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 5361
    iput p1, p0, Landroid/app/Notification$CarExtender;->mColor:I

    #@2
    .line 5362
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$CarExtender;
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 5385
    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    .line 5386
    return-object p0
.end method

.method public setUnreadConversation(Landroid/app/Notification$CarExtender$UnreadConversation;)Landroid/app/Notification$CarExtender;
    .locals 0
    .param p1, "unreadConversation"    # Landroid/app/Notification$CarExtender$UnreadConversation;

    #@0
    .prologue
    .line 5406
    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    #@2
    .line 5407
    return-object p0
.end method
