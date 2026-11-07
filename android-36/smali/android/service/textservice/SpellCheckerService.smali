.class public abstract Landroid/service/textservice/SpellCheckerService;
.super Landroid/app/Service;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;,
        Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;,
        Landroid/service/textservice/SpellCheckerService$Session;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textservice.SpellCheckerService"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-class v0, Landroid/service/textservice/SpellCheckerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/textservice/SpellCheckerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    new-instance v0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    invoke-direct {v0, p0}, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;-><init>(Landroid/service/textservice/SpellCheckerService;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    return-void
.end method


# virtual methods
.method public abstract whitelist createSession()Landroid/service/textservice/SpellCheckerService$Session;
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    return-object v0
.end method
