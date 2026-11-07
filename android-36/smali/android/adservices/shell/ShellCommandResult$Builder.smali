.class public final Landroid/adservices/shell/ShellCommandResult$Builder;
.super Ljava/lang/Object;
.source "ShellCommandResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/shell/ShellCommandResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErr:Ljava/lang/String;

.field private blacklist mOut:Ljava/lang/String;

.field private blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErr(Landroid/adservices/shell/ShellCommandResult$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mErr:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOut(Landroid/adservices/shell/ShellCommandResult$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mOut:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Landroid/adservices/shell/ShellCommandResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mResultCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mResultCode:I

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/shell/ShellCommandResult;
    .registers 3

    .line 146
    new-instance v0, Landroid/adservices/shell/ShellCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/shell/ShellCommandResult;-><init>(Landroid/adservices/shell/ShellCommandResult$Builder;Landroid/adservices/shell/ShellCommandResult-IA;)V

    return-object v0
.end method

.method public blacklist setErr(Ljava/lang/String;)Landroid/adservices/shell/ShellCommandResult$Builder;
    .registers 2
    .param p1, "err"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mErr:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public blacklist setOut(Ljava/lang/String;)Landroid/adservices/shell/ShellCommandResult$Builder;
    .registers 2
    .param p1, "out"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mOut:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public blacklist setResultCode(I)Landroid/adservices/shell/ShellCommandResult$Builder;
    .registers 2
    .param p1, "resultCode"    # I

    .line 128
    iput p1, p0, Landroid/adservices/shell/ShellCommandResult$Builder;->mResultCode:I

    .line 129
    return-object p0
.end method
