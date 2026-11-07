.class public final Llibcore/internal/Java21LanguageFeatures$Pair;
.super Ljava/lang/Record;
.source "Java21LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "a",
        "b"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Llibcore/internal/Java21LanguageFeatures$Pairable;,
        Llibcore/internal/Java21LanguageFeatures$Pairable;
    }
.end annotation


# instance fields
.field private final blacklist a:Llibcore/internal/Java21LanguageFeatures$Pairable;

.field private final blacklist b:Llibcore/internal/Java21LanguageFeatures$Pairable;


# direct methods
.method public constructor blacklist <init>(Llibcore/internal/Java21LanguageFeatures$Pairable;Llibcore/internal/Java21LanguageFeatures$Pairable;)V
    .registers 3
    .param p1, "a"    # Llibcore/internal/Java21LanguageFeatures$Pairable;
    .param p2, "b"    # Llibcore/internal/Java21LanguageFeatures$Pairable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Llibcore/internal/Java21LanguageFeatures$Pair;->a:Llibcore/internal/Java21LanguageFeatures$Pairable;

    iput-object p2, p0, Llibcore/internal/Java21LanguageFeatures$Pair;->b:Llibcore/internal/Java21LanguageFeatures$Pairable;

    return-void
.end method


# virtual methods
.method public blacklist a()Llibcore/internal/Java21LanguageFeatures$Pairable;
    .registers 2

    .line 158
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$Pair;->a:Llibcore/internal/Java21LanguageFeatures$Pairable;

    return-object v0
.end method

.method public blacklist b()Llibcore/internal/Java21LanguageFeatures$Pairable;
    .registers 2

    .line 158
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$Pair;->b:Llibcore/internal/Java21LanguageFeatures$Pairable;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    invoke-custom {p0, p1}, call_site_15("equals", (Llibcore/internal/Java21LanguageFeatures$Pair;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$Pair;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$Pair;->a:Llibcore/internal/Java21LanguageFeatures$Pairable;, instance-get@Llibcore/internal/Java21LanguageFeatures$Pair;->b:Llibcore/internal/Java21LanguageFeatures$Pairable;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 158
    invoke-custom {p0}, call_site_16("hashCode", (Llibcore/internal/Java21LanguageFeatures$Pair;)I, Llibcore/internal/Java21LanguageFeatures$Pair;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$Pair;->a:Llibcore/internal/Java21LanguageFeatures$Pairable;, instance-get@Llibcore/internal/Java21LanguageFeatures$Pair;->b:Llibcore/internal/Java21LanguageFeatures$Pairable;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 158
    invoke-custom {p0}, call_site_17("toString", (Llibcore/internal/Java21LanguageFeatures$Pair;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$Pair;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$Pair;->a:Llibcore/internal/Java21LanguageFeatures$Pairable;, instance-get@Llibcore/internal/Java21LanguageFeatures$Pair;->b:Llibcore/internal/Java21LanguageFeatures$Pairable;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
