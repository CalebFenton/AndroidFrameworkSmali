.class public final Ljava/lang/invoke/StringConcatFactory;
.super Ljava/lang/Object;
.source "StringConcatFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist makeConcat(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    .registers 4
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "concatType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/StringConcatException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs blacklist makeConcatWithConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;
    .registers 6
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "concatType"    # Ljava/lang/invoke/MethodType;
    .param p3, "recipe"    # Ljava/lang/String;
    .param p4, "constants"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/StringConcatException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
