.class Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDeathRecipient"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field private final mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

.field public final mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field public final mScLocale:Ljava/lang/String;

.field public final mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

.field public final mUid:I

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;
    .param p2, "group"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scLocale"    # Ljava/lang/String;
    .param p5, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p6, "uid"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1006
    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    #@7
    .line 1007
    iput-object p5, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@9
    .line 1008
    iput-object p4, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    #@b
    .line 1009
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@d
    .line 1010
    iput p6, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    #@f
    .line 1011
    iput-object p7, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mBundle:Landroid/os/Bundle;

    #@11
    .line 1005
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@2
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    #@7
    .line 1019
    return-void
.end method

.method public hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@0
    .prologue
    .line 1015
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@6
    invoke-interface {v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method
