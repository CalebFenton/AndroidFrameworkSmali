.class public final synthetic Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->lambda$withSecondaryPreferred$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    return-object p1
.end method
