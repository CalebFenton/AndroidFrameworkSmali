.class public Landroid/provider/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$SettingsColumns;,
        Landroid/provider/Contacts$Settings;,
        Landroid/provider/Contacts$PeopleColumns;,
        Landroid/provider/Contacts$People;,
        Landroid/provider/Contacts$GroupsColumns;,
        Landroid/provider/Contacts$Groups;,
        Landroid/provider/Contacts$PhonesColumns;,
        Landroid/provider/Contacts$Phones;,
        Landroid/provider/Contacts$GroupMembership;,
        Landroid/provider/Contacts$ContactMethodsColumns;,
        Landroid/provider/Contacts$ContactMethods;,
        Landroid/provider/Contacts$PresenceColumns;,
        Landroid/provider/Contacts$Presence;,
        Landroid/provider/Contacts$OrganizationColumns;,
        Landroid/provider/Contacts$Organizations;,
        Landroid/provider/Contacts$PhotosColumns;,
        Landroid/provider/Contacts$Photos;,
        Landroid/provider/Contacts$ExtensionsColumns;,
        Landroid/provider/Contacts$Extensions;,
        Landroid/provider/Contacts$Intents;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_EMAIL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_IM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_ORGANIZATION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_PHONE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KIND_POSTAL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "content://contacts"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
