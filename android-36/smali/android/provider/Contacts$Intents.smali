.class public final Landroid/provider/Contacts$Intents;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$Intents$Insert;,
        Landroid/provider/Contacts$Intents$UI;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ATTACH_IMAGE:Ljava/lang/String; = "com.android.contacts.action.ATTACH_IMAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CREATE_DESCRIPTION:Ljava/lang/String; = "com.android.contacts.action.CREATE_DESCRIPTION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_FORCE_CREATE:Ljava/lang/String; = "com.android.contacts.action.FORCE_CREATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEARCH_SUGGESTION_CLICKED:Ljava/lang/String; = "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED:Ljava/lang/String; = "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED:Ljava/lang/String; = "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHOW_OR_CREATE_CONTACT:Ljava/lang/String; = "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1974
    return-void
.end method
