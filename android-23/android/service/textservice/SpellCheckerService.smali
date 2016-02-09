.class public abstract Landroid/service/textservice/SpellCheckerService;
.super Landroid/app/Service;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$Session;,
        Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;,
        Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textservice.SpellCheckerService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const-class v0, Landroid/service/textservice/SpellCheckerService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/service/textservice/SpellCheckerService;->TAG:Ljava/lang/String;

    #@8
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 74
    new-instance v0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    #@5
    invoke-direct {v0, p0}, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;-><init>(Landroid/service/textservice/SpellCheckerService;)V

    #@8
    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    #@a
    .line 68
    return-void
.end method


# virtual methods
.method public abstract createSession()Landroid/service/textservice/SpellCheckerService$Session;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    #@2
    return-object v0
.end method
